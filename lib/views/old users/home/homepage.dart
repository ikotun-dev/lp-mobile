import 'package:flutter/material.dart';
import 'package:living_pro/utils/colors.dart';

import '../models/home_models.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primary1,
              child: Image.asset(
                "assets/home_icon.png",
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    
                  )
                ],
              ),


            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: homeData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage("assets/profile1.png")
                                  )
                                  
                                ],
                              ),
                            ],
                          ),
                        )

                        
                       
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
