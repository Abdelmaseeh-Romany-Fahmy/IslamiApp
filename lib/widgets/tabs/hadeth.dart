import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2026/ui/assets_image.dart';
import 'package:islami2026/widgets/screens/hadethDetails.dart';

class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();

}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> hadethModelList =[];

  Future<void>  ReadHadethDetailsFile()async{
    List<HadethModel> _hadethModelList =[];

    String data =await rootBundle.loadString("assets/hadethDetailsFile/ahadeth.txt");
    List<String> allHadeth= data.trim().split("#");
    allHadeth.removeWhere((element) => element.trim().isEmpty,);

    for (int i = 0; i < allHadeth.length; i++) {
      int index =allHadeth[i].trim().indexOf("\n");
      String name = allHadeth[i].trim().substring(0,index);
      String hadethContant =allHadeth[i].trim().substring(index+1);
      print("name :$name");
      print("Contant $hadethContant");
      _hadethModelList.add(HadethModel(title: name, content:hadethContant ));
    }
    hadethModelList =_hadethModelList;
    setState(() {

    });



  }

  @override
  Widget build(BuildContext context) {

    if (hadethModelList.isEmpty) {
ReadHadethDetailsFile();
    }
    return  Column(
      children: [
        Image.asset(Assets_Image.hadeth_logo,height: MediaQuery.of(context).size.height*0.25),
        Divider(
          thickness: 2,
        ),
        Text("الاحاديث ",style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
        Divider(
          thickness: 2,
        ),
        Expanded(
            child: ListView.builder(
              itemCount:hadethModelList.length,
              itemBuilder: (context, index) => Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(HadethDetails.routName,arguments: HadethModel(title:(hadethModelList[index].title) , content: (hadethModelList[index].content)));
                  },

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(hadethModelList[index].title,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
                  ),
                ),
              ),
            ))

      ],
    );
  }
}
class HadethModel {
  final String title;
  final String content;

  HadethModel({required this.title, required this.content});
}
