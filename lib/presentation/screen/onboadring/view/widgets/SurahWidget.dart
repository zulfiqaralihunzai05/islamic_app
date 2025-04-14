import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../dashboard/surahDetails.dart';
class surahWidget extends StatelessWidget {
  final int surahNo;
  final String surahMainTitle;
  final String surahSubTitle;
  final String surahSubTitle2;
  final String arbicTitle;

  const surahWidget({
    super.key, required this.surahNo, required this.surahMainTitle, required this.surahSubTitle, required this.arbicTitle, required this.surahSubTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/home/star.png"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top:13,
              left: 20,
              child:
              Text(
                surahNo.toString(), // your text here
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),)
          ],
        ),
        SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(surahMainTitle, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Noto Naskh Arabic'),),
            Row(
              children: [
                Text(surahSubTitle, style: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w400,fontFamily: 'Noto Naskh Arabic'),),
                SizedBox(width: 18,),
                Text(surahSubTitle2, style: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Noto Naskh Arabic'),),
              ],
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(arbicTitle, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
        ),

      ],
    );
  }
}
