import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/onboadring/view/widgets/page_widget.dart';
import '../../../../dashboard/navbar_screen.dart';

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
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                OnboardingPage(
                  image: "assets/splash_screen/onboarding1.png",
                  title: "Find Halal Delights",
                  description:
                  "Explore the best local halal restaurants and discover the flavors of the world right at your doorstep.",
                  currentPage: _currentPage,
                  pageIndex: 0,
                ),
                OnboardingPage(
                  image: "assets/splash_screen/onboarding2.png",
                  title: "Connect with Your Muslim Community",
                  description:
                  "Connect with Muslims near and far. Share experiences, stories, and moments with a diverse and welcoming community.",
                  currentPage: _currentPage,
                  pageIndex: 1,
                ),
                OnboardingPage(
                  image: "assets/splash_screen/onboarding3.png",
                  title: "Discover Local Events",
                  description:
                  "Stay updated on exciting events happening in your area. From cultural gatherings to educational seminars, we've got you covered.",
                  currentPage: _currentPage,
                  pageIndex: 2,
                ),
              ],
            ),
          ),
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
                    duration:  Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavScreen()));
                }
              },
              child: Text(
                _currentPage == 2 ? "Start" : "Next",
                style:  TextStyle(fontSize: 16, color: Colors.white),
              ),            ),
          ),
          SizedBox(height: 110,),
        ],
      ),
    );
  }
}


