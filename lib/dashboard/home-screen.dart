import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Text(
          "Quran App",
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.search, color: Colors.grey,)
        ],
      ),
      body: SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          // Keeps balance on both sides
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              // 10px total separation (5+5)
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 600,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 280,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Grant me a blissful family",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              Text(
                                "Oh my lord! Grant unto us wives and offspring who will be the comfort of our eyes. wives and offspring who will be the comfort of our eyes.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
