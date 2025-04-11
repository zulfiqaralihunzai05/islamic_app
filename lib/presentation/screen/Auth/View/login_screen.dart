import 'package:flutter/material.dart';
import 'package:islamic_app/presentation/screen/Auth/View/forget_password_screen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/homescreen.dart';
import 'package:islamic_app/presentation/screen/Auth/View/register_screen.dart';

import '../../../../common/widgets/register_now_text.dart';
import '../../../../common/widgets/login_button.dart';
import '../../../../common/widgets/social_login_buttons .dart';
import '../../../../common/widgets/email_text_field.dart';
import '../../../../common/widgets/wellcome_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titletext(
              text: "Welcome back!                Glad to see you,        Again!",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                TextField1(
                  textFieldTitle: "Enter your email",
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                  child: TextField(
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
                      hintText: "Enter Your password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          // width: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen(),));
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width:double.infinity,
                  child: button1(
                    textLabel: 'Login', onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homescreen()),
                    );
                  },
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Or Login with",
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
                RegisterNowText(
                  text1: "Don't have an account?",
                  text2: 'Register Now', onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
