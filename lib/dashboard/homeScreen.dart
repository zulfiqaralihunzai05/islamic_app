import 'package:flutter/material.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Text(
          "Quran App",
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700),
        ),

        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
