import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final String textFieldTitle;
  const TextField1 ({
    super.key,
    required this.textFieldTitle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: textFieldTitle,

      ),
    );
  }
}