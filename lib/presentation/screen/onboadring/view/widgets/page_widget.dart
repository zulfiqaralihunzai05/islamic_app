import 'package:flutter/material.dart';
class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final int currentPage;
  final int pageIndex;

 OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.currentPage,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            image,
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
         SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return AnimatedContainer(
              duration:  Duration(milliseconds: 300),
              margin:  EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == index ? 20 : 8, // Elongated shape for active dot
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: currentPage == index ? Colors.black : Colors.black,
              ),
            );
          }),
        ),

        SizedBox(height: 36),
        Text(
          title,
          style:  TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Color(0xFF166534),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Padding(
          padding:const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style:  TextStyle(fontSize: 16, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
