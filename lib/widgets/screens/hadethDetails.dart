import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2026/widgets/tabs/hadeth.dart';

import '../../ui/assets_image.dart';
import '../tabs/quran.dart';

class HadethDetails extends StatefulWidget {
  static String routName ="HadethDetails";

   HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {


  @override

  Widget build(BuildContext context) {
    HadethModel hadethModel= ModalRoute.of(context)!.settings.arguments as HadethModel ;
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
                    child: Text(hadethModel.title,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
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

            SingleChildScrollView(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(hadethModel.content,style: Theme.of(context).textTheme.titleMedium,),
            )),

            ],

          ),
        )

        ),




    );

  }

}
