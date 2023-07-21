import 'package:flutter/material.dart';
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
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              BaseText(
                text: "Welcome!!",
                size: 22,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              BaseText(
                text:
                    "Kindly fill in these details to log in and find ehat you need",
                size: 12,
              ),
              SizedBox(
                height: 80,
              ),
              CustomTextField(
                hint: 'Enter your Email address',
                keyboardType: TextInputType.emailAddress,
                // onChanged: (v) {
                //   // email.value = v.trim();
                // },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                obscureText: true,
                hint: 'Enter your Password',
                keyboardType: TextInputType.emailAddress,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
