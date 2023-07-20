import 'package:flutter/material.dart';
import 'package:living_pro/utils/colors.dart';
import 'package:living_pro/utils/text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/onboard1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
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
              const BaseText(
                text: "Find Your Roommate",
                weight: FontWeight.w600,
                size: 18,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseText(
                      text:
                          "Find like-minded individuals to interact with and find the\n roommate you've been looking for or needing.", size: 12,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
