import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/onboadring/view/splash_screen.dart';

import 'dashboard/homeScreen.dart';

void main() {
  //jgcdshf
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homescreen(),
    );
  }
}


