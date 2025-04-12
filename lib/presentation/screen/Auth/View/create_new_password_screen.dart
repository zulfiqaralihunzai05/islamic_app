import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/Auth/View/code_screen.dart';

import '../../../../common/widgets/email_text_field.dart';
import '../../../../common/widgets/login_button.dart';
import '../../../../common/widgets/register_now_text.dart';
import '../../../../common/widgets/wellcome_text.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height: 130,),
      titletext(
        text: "Create New Password?",
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          textAlign: TextAlign.center,
            'Your new password must be unique from those previously used.',
            // First part
            style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),),
      ),
        SizedBox(height: 60),
        TextField1(
          textFieldTitle: "New Password",
        ),
        SizedBox(height: 10),
          TextField1(
            textFieldTitle: "Confirm Password",
          ),
          SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: button1(
            textLabel: 'Reset Password', onTap: () {
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
