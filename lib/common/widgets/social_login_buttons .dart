import 'package:flutter/material.dart';
class imageswidget extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  const imageswidget({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 56,
          width: 100,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Image.asset(
            image1,
            height: 50,
            width: 50,
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 56,
          width: 100,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Image.asset(
           image2,
            height: 50,
            width: 50,
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 56,
          width: 100,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Image.asset(
            image3,
            height: 50,
            width: 50,
          ),
        ),
      ],
    );
  }
}