import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button1 extends StatelessWidget {
  final String textLabel;
  const button1({
    super.key,
    required this.textLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.green[900]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
         textLabel,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 4.0,
                color: Colors.white70,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}