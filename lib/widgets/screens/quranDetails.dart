import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../ui/assets_image.dart';
import '../tabs/quran.dart';

class Qurandetails extends StatefulWidget {
  static String routName ="Qurandetails";

   Qurandetails({super.key});

  @override
  State<Qurandetails> createState() => _QurandetailsState();
}

class _QurandetailsState extends State<Qurandetails> {
 ReadSouraDetailsFile(int index,)async{
    String data =await rootBundle.loadString("assets/souraDetailsfFile/${index+1}.txt");
    // verses=  data.trim().split("\n");
List<String> lines= data.trim().split("\n");
verses =List.generate(lines.length, (i) => " (${i + 1}) ${lines[i]}",);

     setState(() {

     });



  }

  List<String> verses =[];

  @override

  Widget build(BuildContext context) {
    ModelQuran modelQuran= ModalRoute.of(context)!.settings.arguments as ModelQuran ;
     if (verses.isEmpty) ReadSouraDetailsFile(modelQuran.index,);
    return
     Container(

        decoration: BoxDecoration(

            image: DecorationImage(image: AssetImage(Assets_Image.default_bg_Light),fit: BoxFit.cover)
        ),
        child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:Icon(Icons.arrow_back,color: Theme.of(context).colorScheme.secondary,),),
        title: Text("إسلامي"),
    ),
        body: Container(

          margin: EdgeInsets.all(20),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25) ,
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.8)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(modelQuran.name,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
                  ),
                  SizedBox(width: 40,),
                  Icon(Icons.play_circle,size: 30,)
                ],
              ),
              Divider(
                thickness: 2,
                endIndent: 42.5,
                indent: 42.5,



              ),
              verses.isEmpty?Center(
                  heightFactor: 15,
                  child:

              CircularProgressIndicator()):
              Expanded(



                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                  return  Container(
                      child: Center(

                          child: Text(verses[index],style: Theme.of(context).textTheme.titleMedium,)),
                    );
                  },),
                ),
              )

            ],

          ),
        )

        ),




    );

  }

}
