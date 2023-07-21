import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:living_pro/app%20screens/authentication/login_page.dart';
import 'package:living_pro/utils/colors.dart';
import 'package:living_pro/utils/text.dart';

import '../models/onboard_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                      color: AppColor.primary3,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                      'assets/${onboardAssets[index].imagePath}.png'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                      color: AppColor.primary2,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              BaseText(
                text: onboardAssets[index].header,
                alignText: TextAlign.center,
                weight: FontWeight.w600,
                size: 18,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseText(
                      text: onboardAssets[index].description,
                      alignText: TextAlign.center,
                      color: Colors.black,
                      weight: FontWeight.w500,
                      size: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < onboardAssets.length; i++)
                    i == index
                        ? OnboardingScreen(true)
                        : OnboardingScreen(false)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() => index = 2);
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.primary1,
                          color: AppColor.primary1,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    height: 35,
                    minWidth: 180,
                    onPressed: () {
                      if (index == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()));
                      } else {
                        setState(() => index++);
                      }
                    },
                    color: AppColor.primary1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            index == 2 ? 'Get Started' : "Next",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFFFFFFF),
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget OnboardingScreen(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 5,
      width: 20,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: isActive ? AppColor.primary1 : const Color(0XFFEDEDED),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
