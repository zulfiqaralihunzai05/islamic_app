import 'package:flutter/cupertino.dart';

class titletext extends StatelessWidget {
  final String text;
  const titletext({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
  }
}