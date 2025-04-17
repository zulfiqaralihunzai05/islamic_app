import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()  {
    super.initState();
    // Navigate to HomeScreen after 3 seconds
    Timer( Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Islam",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Memorize and recite ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ), Text(
                    "Quran easily",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38, left: 18, right: 18),
            child: Container(
              width: 314,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash_screen/islamic-pic1.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
