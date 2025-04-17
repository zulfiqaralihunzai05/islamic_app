import 'package:flutter/material.dart';

import '../presentation/screen/onboadring/view/widgets/DetailedSurahTextWidget.dart';

class SurahDetails extends StatelessWidget {
 SurahDetails({super.key});

  final List<Map<String, String>> surahData = [
    {
      'surahNo': '1',
      'arbicSurahText': 'ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ',
      'surahTranslationText': '[All] praise is [due] to Allah, Lord of the worlds -',
    },
    {
      'surahNo': '2',
      'arbicSurahText': 'ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
      'surahTranslationText': 'The Entirely Merciful, the Especially Merciful,',
    },
    // Add more surah data here as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black54,
        ),
        title: Text(
          "Al-Fatiah",
          style: TextStyle(
              color: Colors.green.shade700, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/home/surahdetail_pic.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(22)),
                ),
              ),
              Positioned(
                  top: 25,
                  left: 75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Al-Fatiah",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The Opening",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 200,
                        height: 1.5,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Row(
                        children: [
                          Text(
                            "MECCAN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          SizedBox(width: 7),
                          Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "7 VERSES",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        "بِسْمِ ٱللَّٰهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            fontFamily: 'Noto Naskh Arabic'),
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(height: 18,),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: surahData.length,
              itemBuilder: (context, index) {
                var surah = surahData[index];
                return detailedSurahText(
                  surahNo: surah['surahNo']!,
                  arbicSurahText: surah['arbicSurahText']!,
                  surahTranslationText: surah['surahTranslationText']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}




