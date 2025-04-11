import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/Auth/View/login_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/register_screen.dart';
class RegisterNowText extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onTap;


  const RegisterNowText({
    super.key, required this.text1, required this.text2, required this.onTap,
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
          onTap: onTap,
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