import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/alam/view/alam_screen.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AlamScreen(),
    );
  }
}

