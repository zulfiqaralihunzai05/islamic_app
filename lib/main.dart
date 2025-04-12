import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/Auth/View/change_password_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/create_new_password_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/forget_password_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/login_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/register_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/term_and_conditions.dart';

void main() {
  //jgcdshf
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  LoginScreen(),

    );
  }
}


