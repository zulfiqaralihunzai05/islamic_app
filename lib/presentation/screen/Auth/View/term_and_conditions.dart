import 'package:flutter/material.dart';

import '../../../../common/widgets/bulletpoint.dart';
import '../../../../common/widgets/login_button.dart';
class TermAndConditions extends StatelessWidget {
  const TermAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Terms and conditions",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                        "To commence a group ride, after accepting our Host Terms, you can unlock multiple two-wheelers for your group one by one. By tapping ",
                      ),
                      TextSpan(
                        text: "“I AGREE” ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "you assume the responsibility of ",
                      ),
                      TextSpan(
                        text: "“Host” ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "and confirm that you have and agreed to our e-Vehicle ",
                      ),
                      TextSpan(
                        text: "Terms and Conditions.\n\n",
                        style: TextStyle(
                            color: Colors.teal, decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: "As Host, you agree and confirm that:\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 12),
                BulletPoint("each guest rider is at least 18 years old;"),
                BulletPoint("only one person will ride a scooter at a time;"),
                BulletPoint("you will pay for all rented scooters/e-bikes in your group;"),
                BulletPoint(
                    "you are responsible for all parking fines, fees, penalties, injuries and damage caused by or to Guests while on the group ride."),
                SizedBox(height: 20),
                Text(
                  "Before unlocking each guest scooter/e-bike, you must provide each Guest the opportunity to read and accept our e-Vehicle Terms and Conditions on your phone.",
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(
                  width:double.infinity,
                  child: button1(
                    textLabel: 'I agree', onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TermAndConditions()),
                    );
                  },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
