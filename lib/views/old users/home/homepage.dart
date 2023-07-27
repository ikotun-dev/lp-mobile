import 'package:flutter/material.dart';
import 'package:living_pro/utils/colors.dart';
import 'package:living_pro/utils/text.dart';

import '../../../utils/widgets/show_more_texts.dart';
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
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
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
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/profile1.png"),
                      ),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BaseText(
                            text: "Daniel Smith",
                            weight: FontWeight.w600,
                            size: 14,
                          ),
                          ShowMoreText(
                            text:
                                "Here’s the apartment I just got. Need a roommate, want to try the test?",
                            size: 5,
                            maxLines: 2,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const BaseText(
                            text: "06:OOam",
                            weight: FontWeight.w400,
                            size: 13,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/chat.png",
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 250,
                          width: 180,
                          child: Image.asset("assets/ds1.png"),
                        ),
                        SizedBox(
                            height: 250,
                            width: 180,
                            child: Image.asset("assets/ds2.png"))
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.3,
                      height: 1.0,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: homeData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/${homeData[index].imagePaths}.png"),
                            ),
                            title:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BaseText(
                                  text: homeData[index].name,
                                  weight: FontWeight.w600,
                                  size: 14,
                                ),
                                ShowMoreText(
                                  text:
                                      homeData[index].description,
                                  size: 5,
                                  maxLines: 2,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const BaseText(
                                  text: "06:OOam",
                                  weight: FontWeight.w400,
                                  size: 13,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icons.png",
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
