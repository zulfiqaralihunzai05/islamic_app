import 'package:flutter/material.dart';

import '../../../../dashboard/home-screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildPage(
                  "assets/splash_screen/islamic-pic1.png",
                  "Find Halal Delights",
                  "Explore the best local halal restaurants and discover the flavors of the world right at your doorstep.",
                ),
                _buildPage(
                  "assets/splash_screen/islamic-pic2.png",
                  "Connect with Your Muslim Community",
                  "Connect with Muslims near and far. Share experiences, stories, and moments with a diverse and welcoming community.",
                ),
                _buildPage(
                  "assets/splash_screen/islamic-pic3.png",
                  "Discover Local Events",
                  "Stay updated on exciting events happening in your area. From cultural gatherings to educational seminars, we've got you covered.",
                ),
              ],
            ),
          ),
           SizedBox(height: 10),
          // Next Button
          SizedBox(
            width: 220,
            height: 53,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  Color(0xFF166534),
                padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                if (_currentPage < 2) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {

                  Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                }
              },
              child: Text("Next", style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
         SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildPage(String image, String title, String description) {
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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 12 : 8,
              height: _currentPage == index ? 12 : 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.green : Colors.grey,
              ),
            );
          }),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style:  TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color(0xFF166534), // Dark green
          ),
          textAlign: TextAlign.center,
        ),
         SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
