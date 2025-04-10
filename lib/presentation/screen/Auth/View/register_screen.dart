import 'package:flutter/material.dart';

import '../../../../common/widgets/email_text_field.dart';
import '../../../../common/widgets/login_button.dart';
import '../../../../common/widgets/register_now_text.dart';
import '../../../../common/widgets/social_login_buttons .dart';
import '../../../../common/widgets/wellcome_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              titletext(
                text: "Hello! Register to                 get started",
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SizedBox(
                    height: 55,
                    child: TextField1(
                      textFieldTitle: "UserName",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField1(
                    textFieldTitle: "Email",
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: _obscureText,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          // width: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField1(
                    textFieldTitle: "Confirm password",
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: button1(
                      textLabel: 'Register',
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'By signing up, you’ve agree to our ', // First part
                      style: TextStyle(color: Colors.black, fontSize: 18,height: 1.5),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, wordSpacing: 1),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: 20),

                  //SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Or Register with",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    ],
                  ),
                  SizedBox(height: 25),
                  imageswidget(
                    image1: 'assets/images/facebook_ic (1).png',
                    image2: 'assets/images/google_ic (1).png',
                    image3: 'assets/images/cib_apple.png',
                  ),
                  SizedBox(height: 20),
                  bottomtext(
                    text1: 'Already have an account?',
                    text2: 'Login Now',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
