import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2026/ui/assets_image.dart';
import 'package:islami2026/widgets/screens/quranDetails.dart';

class quranTab extends StatefulWidget {

   quranTab({super.key});

  @override
  State<quranTab> createState() => _quranTabState();
}

class _quranTabState extends State<quranTab> {
List<String>  surasName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

List<int>  countVerses =[];

readCountVerses()async{
  List<int>  _countVerses =[];
for(var i =0 ; i< surasName.length;i++){
  String data =await rootBundle.loadString("assets/souraDetailsfFile/${i+1}.txt");
  List<String> verses=  data.trim().split("\n");
  verses.removeWhere(
        (element) => element.trim().isEmpty,
  );
  _countVerses.add(verses.length);
  setState(() {

  });

}

countVerses =_countVerses;



}

  @override
  Widget build(BuildContext context) {
  if(countVerses.isEmpty)readCountVerses();
    return Stack(
      children:[
        Column(
        children: [
          Image.asset(Assets_Image.quran_logo,height: MediaQuery.of(context).size.height*0.25),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Expanded(child: Text("عدد الايات  ",style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,)),

              Expanded(child: Text("اسم الصوره ",style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center)),

            ],
          ),
          Divider(
            thickness: 2,
          ),
          Expanded(
              child:countVerses.isEmpty?Center(child: CircularProgressIndicator()): ListView.builder(
                itemCount: surasName.length,
                itemBuilder: (context, index) => Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Qurandetails.routName,arguments: ModelQuran(surasName[index], index));
                    },

                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(countVerses[index].toString(),style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(surasName[index],style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))

        ],
      ),
        Center(child: VerticalDivider(
          thickness: 2,
          indent: MediaQuery.of(context).size.height*0.26,
        ))
      ]
    );
  }
}
class ModelQuran{
 final String name;
 final int index;

  ModelQuran(this.name, this.index);
}