import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/Auth/View/code_screen.dart';

import '../../../../common/widgets/email_text_field.dart';
import '../../../../common/widgets/login_button.dart';
import '../../../../common/widgets/register_now_text.dart';
import '../../../../common/widgets/wellcome_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height: 130,),
      titletext(
        text: "Password  Changed!",
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          textAlign: TextAlign.center,
            'Your password has been changed successfully.',
            // First part
            style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),),
      ),
        SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.green, Colors.green[900]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 50,
            ),
          ),
        SizedBox(height: 50,),

        SizedBox(
          width: double.infinity,
          child: button1(
            textLabel: 'Back To Login', onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CodeScreen()),
            );
          },
          ),
        ),


        ],
      ),
    );
  }
}
