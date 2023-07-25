import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:living_pro/views/authentication/signup_page.dart';
import 'package:living_pro/views/old%20users/home/homepage.dart';
import 'package:living_pro/utils/colors.dart';
import 'package:living_pro/utils/text.dart';

import '../../utils/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const BaseText(
                  text: "Welcome!!",
                  size: 22,
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BaseText(
                  text:
                      "Kindly fill in these details to log in and find what you need",
                  size: 12,
                ),
                const SizedBox(
                  height: 80,
                ),
                const CustomTextField(
                  hint: 'Enter your Email Address',
                  keyboardType: TextInputType.emailAddress,
                  // onChanged: (v) {
                  //   // email.value = v.trim();
                  // },
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  obscureText: true,
                  hint: 'Enter your Password',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: BaseText(
                    text: 'Forgot Password?',
                    size: 12,
                    color: AppColor.primary1,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: MaterialButton(
                    minWidth: 200,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomePageScreen(),
                        ),
                      );
                    },
                    color: AppColor.primary1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: BaseText(
                      text: "Log in",
                      color: AppColor.bg,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: BaseText(
                    text: "You can log in with",
                    weight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                          height: 45,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.primary1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/google.png"),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 45,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.primary1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/facebook.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "New here? Please ",
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Create Account',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SignupPage(),
                                  ),
                                ),
                        )
                      ],
                    ),
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
