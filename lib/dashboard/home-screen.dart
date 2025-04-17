import 'package:flutter/material.dart';

import '../presentation/screen/onboadring/view/widgets/homeContainerWidget.dart';
import '../presentation/screen/onboadring/view/widgets/homeTextImageWidget.dart';
import '../presentation/screen/onboadring/view/widgets/DuaCollectionWidget.dart';

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  // Entire content wrapped in SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // Ensure alignment
          children: [
            SizedBox(
              height: 315,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage("assets/home/Hero.png"),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 30,
                      left: 10,
                      right: 0,
                      child: Row(
                        children: [
                          Text(
                            "Isalam",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.grey, width: 1.5),
                              ),
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      top: 70,
                      left: 0,
                      right: 0,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: sliderData.map((item) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage('assets/home/cont_bachg.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      item['title']!,
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      item['description']!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white70),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      )),
                  Positioned(
                    top: 219,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          homeContainerWidget(
                            imagePath: 'assets/home/blub.png',
                            textName: 'Reminder',
                          ),
                          SizedBox(width: 14),
                          homeContainerWidget(
                            imagePath: 'assets/home/alarm.png',
                            textName: 'Reminder',
                          ),
                          SizedBox(width: 14),
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
            SizedBox(height: 4),
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
                            SizedBox(width: 66),
                            text_imageWidget(
                              rowImagePath: 'assets/home/folder.png',
                              rowText: 'Books',
                            ),
                            SizedBox(width: 66),
                            text_imageWidget(
                              rowImagePath: 'assets/home/gift.png',
                              rowText: 'Donate',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "All Duas",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "view all",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView(
                      padding: const EdgeInsets.only(left: 14.0, right: 14, top: 8),
                      children: [
                        duaCollectionWidget(duaMainTitle: 'Ablution', duaSubHeading: '10-sub categories', duaTotal: 24),
                        SizedBox(height: 23),
                        duaCollectionWidget(duaMainTitle: 'Clothes', duaSubHeading: '4-sub categories', duaTotal: 10),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Text(
                              "Ramazan",
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Text(
                              "24",
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
