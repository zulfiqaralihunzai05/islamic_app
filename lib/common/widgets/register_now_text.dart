import 'package:flutter/material.dart';
class bottomtext extends StatelessWidget {
  final String text1;
  final String text2;


  const bottomtext({
    super.key, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,

          style: TextStyle(color: Colors.black87, fontSize: 16),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            text2,
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}