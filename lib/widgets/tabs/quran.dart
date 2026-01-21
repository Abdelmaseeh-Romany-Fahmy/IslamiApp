import 'package:flutter/material.dart';
import 'package:islami2026/ui/assets_image.dart';
import 'package:islami2026/widgets/screens/quranDetails.dart';

class quranTab extends StatelessWidget {
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
   quranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets_Image.quran_logo,height: MediaQuery.of(context).size.height*0.25),
        Expanded(
          child: ListView.separated(
            itemCount: surasName.length,
              itemBuilder: (context, index) => Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Qurandetails.routName,arguments: ModelQuran(surasName[index], index));
                  },

                  child: Text(surasName[index],style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ), separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness:2,
              );
          },
        ))

      ],
    );
  }
}
class ModelQuran{
 final String name;
 final int index;

  ModelQuran(this.name, this.index);

}