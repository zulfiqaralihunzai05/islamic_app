import 'package:flutter/material.dart';
class homeContainerWidget extends StatelessWidget {
  final String imagePath;
  final String textName;

  const homeContainerWidget({
    super.key, required this.imagePath, required this.textName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 75,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(97.13 * (3.1415926535 / 180)),
            colors: [
              Color(0xFF87D1A4),
              Color(0xFF006754),
            ],
          ),
          borderRadius: BorderRadius.circular(23)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 7.0),
        child: Column(children: [
          Image(image: AssetImage(imagePath), width: 32, height: 32,),
          SizedBox(height: 6,),
          Text(textName, style: TextStyle(color: Colors.white, fontSize: 15),)
        ],),
      ),


    );
  }
}