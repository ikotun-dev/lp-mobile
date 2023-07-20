import 'dart:async';
import 'package:flutter/material.dart';
import 'package:living_pro/utils/colors.dart';

import '../onboard/views/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary1,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        // child: Center(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Icon(
        //         Icons.home,
        //         color: AppColor.bg,

        //         size: 20,
        //       ),
        //       Text("LivingPro",
        //           style: GoogleFonts.originalSurfer(
        //               textStyle: TextStyle(
        //                   color: AppColor.bg,
        //                   fontWeight: FontWeight.w600,
        //                   fontSize: 26))),
        //     ],
        //   ),
        // ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Splash.png"),
          ),
        ),
      ),
    );
  }
}
