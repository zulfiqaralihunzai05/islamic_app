import 'package:flutter/material.dart';
import 'package:arabic_font/arabic_font.dart';
import 'package:islamic_app/dashboard/surahDetails.dart';
import '../presentation/screen/onboadring/view/widgets/SurahWidget.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<QuranScreen> {
  int selectedIndex = 0;
  final List<String> tabs = ['Surah', 'Para', 'Page', 'Hijb'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black54,
        ),
        title: Text(
          "Quran App",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Asslamualaikum",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Tanvir Ahassan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 142,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/home/cont_bachg.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/book.png"),
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Last Read",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Al-Fatiah",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Ayah No: 1",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )
                    ],
                  ),
                )),
                Positioned(
                    top: 58,
                    left: 195,
                    child: Image(
                      image: AssetImage("assets/home/quran.png"),
                      width: 115,
                      height: 64,
                    ))
              ],
            ),

            SizedBox(height: 25),

            // Taskbar
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(tabs.length, (index) {
                    final isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            tabs[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.w500,
                              color: isSelected
                                  ? Colors.green.shade800
                                  : Colors.black54,
                            ),
                          ),
                          SizedBox(height: 6),
                          Container(
                            height: 3,
                            width: 50,
                            color:
                                isSelected ? Colors.purple : Colors.transparent,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
            SizedBox(height: 34 ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SurahDetails(),));
              },

                child: surahWidget(surahNo: 1, surahMainTitle: 'Al-Fatiah', surahSubTitle: 'Meccan', arbicTitle: 'سورة الفاتحة', surahSubTitle2: '7 verses',)),
            SizedBox(height: 25,),
            surahWidget(surahNo: 2, surahMainTitle: 'Al-Baqarah', surahSubTitle: 'Medinian', arbicTitle: 'سورة البقرة ', surahSubTitle2: '286 verses',),
            SizedBox(height: 25,),
            surahWidget(surahNo: 3, surahMainTitle: 'Al-Imran', surahSubTitle: 'Meccan', arbicTitle: 'آلِ عِمْرَان', surahSubTitle2: '200 verses',),
            SizedBox(height: 25,),
            surahWidget(surahNo: 4, surahMainTitle: 'An-Nisa', surahSubTitle: 'Meccan', arbicTitle: 'سورة النساء', surahSubTitle2: '176 verses',),

          ],
        ),
      ),
    );
  }
}


