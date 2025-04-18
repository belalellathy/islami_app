import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/tabs/Quran/most_recent.dart';
import 'package:islami_app/tabs/Quran/most_recent_suras.dart';

import 'package:islami_app/theme/apptheme.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
      List<String>arabicsuranames=[
    
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

List<String> englishQuranSurahs = [
    "Al-Fatiha",
    "Al-Baqarah",
    "Aal-E-Imran",
    "An-Nisa'",
    "Al-Ma'idah",
    "Al-An'am",
    "Al-A'raf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Isra",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiya",
    "Al-Hajj",
    "Al-Mu'minun",
    "An-Nur",
    "Al-Furqan",
    "Ash-Shu'ara",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankabut",
    "Ar-Rum",
    "Luqman",
    "As-Sajda",
    "Al-Ahzab",
    "Saba",
    "Fatir",
    "Ya-Sin",
    "As-Saffat",
    "Sad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiya",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Qaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqi'a",
    "Al-Hadid",
    "Al-Mujadila",
    "Al-Hashr",
    "Al-Mumtahina",
    "As-Saff",
    "Al-Jumu'a",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haqqah",
    "Al-Ma'arij",
    "Nuh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddathir",
    "Al-Qiyamah",
    "Al-Insan",
    "Al-Mursalat",
    "An-Naba'",
    "An-Nazi'at",
    "Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Buruj",
    "At-Tariq",
    "Al-A'la",
    "Al-Ghashiyah",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Ad-Duha",
    "Ash-Sharh",
    "At-Tin",
    "Al-Alaq",
    "Al-Qadr",
    "Al-Bayyina",
    "Az-Zalzalah",
    "Al-Adiyat",
    "Al-Qari'a",
    "At-Takathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraysh",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Nas"
  ];

List<String> AyaNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '6',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: Apptheme.black.withOpacity(0.7),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Apptheme.primary,
                  width: 1
                )
                
              ),
              child: TextField(
                style: const TextStyle(
                  color: Apptheme.white
                ),
                onChanged: (value){
                  searchsuraname(value);
                  setState(() {
                    
                  });
                  
                },
                
                decoration: InputDecoration(
                  
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/Vector.svg",colorFilter: const ColorFilter.mode(Apptheme.primary, BlendMode.srcIn),width: 24,height: 24,),
                  ),
                  hintText: "Sura Name",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFEFFE8)
                  ),
                  border: InputBorder.none
                ),
                
              ),
            ),
            const SizedBox(height: 10,),
            
            
            Flexible(
              child: ListView(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min, 
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MostRecent(englishQuranSurahs: englishQuranSurahs,arabicQuranSurahs: arabicsuranames,ayat: AyaNumber,),
                      const SizedBox(
                                  height: 20,
                          ),
                      const Text("Sura List",style: TextStyle(
                        color: Apptheme.white,
                        fontSize: 16
                      ),),
                      searchresultindex.isEmpty? const Center(child: Text("No Sura found",style: TextStyle(color: Apptheme.white),),): ListView.separated(
                       shrinkWrap: true,  // <-- Needed for nested ListView
                        physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_,index){
                      return searchresultindex.contains(index)? InkWell(
                                onTap: () async {
                                
                                await Navigator.of(context).pushNamed("Suradetail",
                                          arguments: index  );
                                            
                                  if(!MostRecentSuras.MostRecentSurasindex.contains(index)&& MostRecentSuras.MostRecentSurasindex.length<5){
                                        MostRecentSuras.MostRecentSurasindex.add(index);
                                        MostRecentSuras.saveMostRecentSuras();
                                  }else if(MostRecentSuras.MostRecentSurasindex.length==5){
                                        MostRecentSuras.MostRecentSurasindex.clear();
                                        MostRecentSuras.MostRecentSurasindex.add(index);
                                        MostRecentSuras.saveMostRecentSuras();
                                    
                                  }
                                            setState(() {
                      
                                            });
                                            },
                                child: Row(
                                
                                children: [
                                  Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(image:AssetImage("assets/images/arabic-art-svgrepo-com 1.png") )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text("${index+1}",style: const TextStyle(
                                            fontSize: 16,
                                            color:Apptheme.white 
                                          ),),
                                        )),
                                  const SizedBox(width: 10,),
                                  Column(
                                        children: [
                                          Text(englishQuranSurahs[index],style: const TextStyle(
                                color: Apptheme.white,
                                fontSize: 16)),
                                          Text("${AyaNumber[index]}verses",style: const TextStyle(
                                color: Apptheme.white,
                                fontSize: 16))
                                        ],
                                  )
                                ,const Spacer() ,Text(arabicsuranames[index],style: const TextStyle(
                                color: Apptheme.white,
                                fontSize: 16))
                                ],
                      ),
                      ): const SizedBox();
                      }, 
                                            separatorBuilder:(_,index)=>searchresultindex.contains(index)?const Divider(
                      color: Apptheme.white,
                      thickness: 1,
                      endIndent: 20,
                      indent: 20,
                                            ):const SizedBox(), 
                                            itemCount: arabicsuranames.length)
                    ],
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }

  List<int>searchresultindex=List.generate(114, (index) => index,);

  void searchsuraname(String query){
  
    searchresultindex.clear();
    for(int i=0;i<114;i++){
      if(englishQuranSurahs[i].toLowerCase().contains(query.toLowerCase())||arabicsuranames[i].contains(query)){
        searchresultindex.add(i);

    }

  }
  }
}