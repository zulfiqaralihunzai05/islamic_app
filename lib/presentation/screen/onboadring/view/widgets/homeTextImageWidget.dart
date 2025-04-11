import 'package:flutter/material.dart';
class text_imageWidget extends StatelessWidget {
  final String rowImagePath;
  final String rowText;
  const text_imageWidget({
    super.key, required this.rowImagePath, required this.rowText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage(rowImagePath),
          width: 60,
          height: 40,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          rowText,
          style:
          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}