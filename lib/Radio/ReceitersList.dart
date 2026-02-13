import 'package:flutter/material.dart';
import 'package:islami_app/API_model/API_manger/api_manger.dart';
import 'package:islami_app/Radio/item.dart';
import 'package:islami_app/Radio/radio_tab.dart';

class Receiterslist extends StatefulWidget {
  const Receiterslist({super.key});

  @override
  State<Receiterslist> createState() => _ReceiterslistState();
}

class _ReceiterslistState extends State<Receiterslist> {
  List<String> arabicsuranames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return FutureBuilder(future: APIManager.getreciters(), builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(child: Text("Error: ${snapshot.error}"));
      } else {
        final reciters = snapshot.data!.reciters;
        return ListView.separated(
          separatorBuilder: (__, _) => const SizedBox(height: 10),
          itemCount: reciters![args['index']]!.moshaf![args['index']].surahTotal!,
          itemBuilder: (context, index) {
            String formatedindex;
            index = index + 1;
            if(index<10){
              formatedindex = index.toString().padLeft(3, '0');
              print(formatedindex);
            }else if(index<100){
              formatedindex = index.toString().padLeft(2, '0');
              print(formatedindex);
            }
              else{
                formatedindex = "${index+1}";
              }
            return RadioTab(items(name: arabicsuranames[index-1], url: "${reciters[args['index']].moshaf![args['index']].server}${formatedindex}.mp3"));
          },
        );
      }
    });
  }
}