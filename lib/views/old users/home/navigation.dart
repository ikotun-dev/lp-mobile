
import 'package:flutter/material.dart';
import 'package:living_pro/views/old%20users/home/discover_page.dart';
import 'package:living_pro/views/old%20users/home/homepage.dart';
import 'package:living_pro/views/old%20users/home/inbox_page.dart';
import 'package:living_pro/views/old%20users/home/post_page.dart';
import 'package:living_pro/views/old%20users/home/profile_page.dart';

import '../../../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomePageScreen(),
    const DiscoverPage(),
    const PostPage(),
    const InboxPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() => currentIndex = value),
        selectedIconTheme: IconThemeData(color:AppColor.primary1),
        selectedLabelStyle: TextStyle(color:AppColor.primary1),
        unselectedLabelStyle: TextStyle(color: AppColor.txt1),
        //unselected icontheme: ,
        unselectedItemColor: AppColor.txt1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.note), label: "Post"),
                        BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      ),
    );
  }
}
