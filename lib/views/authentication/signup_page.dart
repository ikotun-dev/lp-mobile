import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:living_pro/views/authentication/login_page.dart';

import '../../utils/colors.dart';
import '../../utils/custom_textfield.dart';
import '../../utils/text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isChecked = false;
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
                  size: 16,
                ),
                const SizedBox(
                  height: 70,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  hint: 'Enter your Fullname',
                  keyboardType: TextInputType.emailAddress,
                  // onChanged: (v) {
                  //   // email.value = v.trim();
                  // },
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  hint: 'Enter your Email address',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BaseText(
                      text: 'Remember me',
                      size: 12,
                      color: AppColor.primary1,
                    ),
                    Checkbox(
                      value: _isChecked,
                      activeColor: AppColor.primary1,
                      checkColor: Colors.white,
                      side: BorderSide(color: AppColor.txt2),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ?? false;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: MaterialButton(
                    minWidth: 200,
                    onPressed: () {},
                    color: AppColor.primary1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: BaseText(
                      text: "Create Account",
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
                    text: "You can create an account with",
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
                      text: "Not new here? Please ",
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Log in.',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const LoginPage(),
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
