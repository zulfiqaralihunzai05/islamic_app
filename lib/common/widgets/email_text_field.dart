import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final String textFieldTitle;
  const TextField1 ({
    super.key,
    required this.textFieldTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: SizedBox(
        height: 55,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: textFieldTitle,

          ),
        ),
      ),
    );
  }
}