import 'package:flutter/material.dart';

import '../../ui/assets_image.dart';
import '../tabs/quran.dart';

class Qurandetails extends StatelessWidget {
  static String routName ="Qurandetails";
  const Qurandetails({super.key});

  @override
  Widget build(BuildContext context) {
    ModelQuran modelQuran= ModalRoute.of(context)!.settings.arguments as ModelQuran ;
    return Container(
    
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
          height:MediaQuery.of(context).size.height*0.652 ,
          width: MediaQuery.of(context).size.width*3.54,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25) ,
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.8)),
          child: Column(
            children: [
              Text(modelQuran.name,style: Theme.of(context).textTheme.titleMedium,),
              Divider(
                thickness: 2,
                endIndent: 42.5,
                indent: 42.5,



              )
            ],

          ),
        )

        ),




    );
  }
}
