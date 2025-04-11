import 'package:flutter/material.dart';

import '../presentation/screen/onboadring/view/widgets/homeScreenWidget.dart';
import '../presentation/screen/onboadring/view/widgets/homeTextImageWidget.dart';

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
            height: 340,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage("assets/home/background-image.png"),
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
                    top: 74,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Row(
                          children: sliderData.map((item) {
                            return Container(
                              width: 280,
                              height: 100,
                              margin: EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['title']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
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
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                Positioned(
                  top: 200,
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Row(
                  children: [
                    text_imageWidget(rowImagePath: 'assets/home/chat.png', rowText: 'Dua Q&A',),
                    SizedBox(width: 66,),
                    text_imageWidget(rowImagePath:'assets/home/folder.png' , rowText: 'Books',),
                    SizedBox(width: 66,),
                    text_imageWidget(rowImagePath: 'assets/home/gift.png', rowText: 'Donate',),
                  ],
                ),


              ),
            ],
          )
        ],
      ),
    );
  }
}


