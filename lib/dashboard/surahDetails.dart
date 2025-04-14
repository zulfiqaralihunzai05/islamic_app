import 'package:flutter/material.dart';

import '../presentation/screen/onboadring/view/widgets/DetailedSurahTextWidget.dart';

class SurahDetails extends StatelessWidget {
  const SurahDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black54,
        ),
        title: Text(
          "Al-Fatiah",
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/home/surahdetail_pic.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12)),
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
              SizedBox(height: 22,),
              Column(
                children: [
                  detailedSurahText(surahNo: '1', arbicSurahText: 'ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ', surahTranslationText: '[All] praise is [due] to Allah, Lord of the worlds -',),
                  SizedBox(height: 12,),
                  detailedSurahText(surahNo: '2', arbicSurahText: 'ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ', surahTranslationText: 'The Entirely Merciful, the Especially Merciful,',),
                  SizedBox(height: 12,),
                  detailedSurahText(surahNo: '3', arbicSurahText: 'مَـٰلِكِ يَوْمِ ٱلدِّينِ', surahTranslationText: 'Master of the Day of Judgment.',)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


