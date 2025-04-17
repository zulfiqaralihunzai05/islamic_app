import 'package:flutter/material.dart';
class duaCollectionWidget extends StatelessWidget {
  final String duaMainTitle;
  final String duaSubHeading;
  final int duaTotal;

  const duaCollectionWidget({
    super.key, required this.duaMainTitle, required this.duaSubHeading,required this.duaTotal
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(duaMainTitle, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)),
            // SizedBox(height: 10,),
            Row(
              children: [
                Image(image: AssetImage("assets/home/Vector.png"), width: 20, height: 20,),
                SizedBox(width: 10,),
                Text(duaSubHeading, style: TextStyle(color: Colors.black54, fontSize: 16, )),
              ],
            ),

          ],
        ),
        Spacer(),

        Column(
          children: [
            Text(duaTotal.toString(), style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),),
            SizedBox(width: 10,),
            Text("Duas", style: TextStyle(color: Colors.black54, fontSize: 16,

            ),)
          ],
        ),

      ],
    );
  }
}