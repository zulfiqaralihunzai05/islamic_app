import 'package:flutter/material.dart';

import '../presentation/screen/onboadring/view/widgets/homeScreenWidget.dart';
import '../presentation/screen/onboadring/view/widgets/homeTextImageWidget.dart';
import 'DuaCollectionWidget.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> sliderData = [
    {
      'title': "Grant me a blissful family",
      'description':
          "Oh my lord! Grant unto us wives and offspring who will be the comfort of our eyes. wives and offspring who will be the comfort of our eyes."
    },
    {
      'title': "Grant me a blissful family",
      'description':
          "Oh my lord! Grant unto us wives and offspring who will be the comfort of our eyes. wives and offspring who will be the comfort of our eyes."
    },
    {
      'title': "Grant me a blissful family",
      'description':
          "Oh my lord! Grant unto us wives and offspring who will be the comfort of our eyes. wives and offspring who will be the comfort of our eyes."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 315,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage("assets/home/Hero.png"),
                    width: 400,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 10,
                    right: 0,
                    child: Row(
                      children: [
                        Text(
                          "Isalam",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(color: Colors.grey, width: 1.5),
                            ),
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        )
                      ],
                    )),
                Positioned(
                    top: 84,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Row(
                          children: sliderData.map((item) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 340,
                                height: 100,
                                margin: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/home/cont_bachg.png'),
                                    fit: BoxFit.cover,
                                  ),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0, right: 16, top: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['title']!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                        color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        item['description']!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                Positioned(
                  top: 219,
                  left: 20,
                  right: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        homeContainerWidget(
                          imagePath: 'assets/home/blub.png',
                          textName: 'Reminder',
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        homeContainerWidget(
                          imagePath: 'assets/home/alarm.png',
                          textName: 'Reminder',
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        homeContainerWidget(
                          imagePath: 'assets/home/alarm.png',
                          textName: 'Reminder',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          text_imageWidget(
                            rowImagePath: 'assets/home/chat.png',
                            rowText: 'Dua Q&A',
                          ),
                          SizedBox(
                            width: 66,
                          ),
                          text_imageWidget(
                            rowImagePath: 'assets/home/folder.png',
                            rowText: 'Books',
                          ),
                          SizedBox(
                            width: 66,
                          ),
                          text_imageWidget(
                            rowImagePath: 'assets/home/gift.png',
                            rowText: 'Donate',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22,),
                Row(
                  children: [
                    Text("All Duas", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
                    Spacer(),
                    Text("view all", style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    ),)
                  ],
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14, top: 8),
                  child: Column(
                    children: [
                      duaCollectionWidget(duaMainTitle: 'Ablution',duaSubHeading: '10-sub categories', duaTotal: 24,),
                      SizedBox(height: 23,),
                      duaCollectionWidget(duaMainTitle: 'Clothes', duaSubHeading: '4-sub categories', duaTotal: 10,),
                      SizedBox(height: 24,),
                      Row(
                        children: [
                          Text("Ramazan", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
                          Spacer(),
                          Text("24", style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,)),
                        ],
                      )
                    ],
                  ),

                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}


