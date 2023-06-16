import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'package:swish_basketball/view/analytics/scoreanalytics.dart';
import 'package:swish_basketball/view/community/community.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
import 'package:swish_basketball/view/home/parenthomescreen.dart';
import 'package:swish_basketball/view/kids/kidshomescreen.dart';
import 'package:swish_basketball/view/setting/setting.dart';
import 'package:swish_basketball/view/video/swichvideolibrary.dart';

class HomeMainScreen extends StatefulWidget {
  final String type;
  const HomeMainScreen({super.key, required this.type});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  int _currentIndex = 0;

  List parentscreens = [
    const HomeScreen(),
    const CommunityScreen(),
    const swishvideo(),
    const ScoreAnalytics(),
    const SettingScreen(),
  ];
  List kidscreen = [
    const kidshomescreen(),
    const CommunityScreen(),
    const swishvideo(),
    const ScoreAnalytics(),
    const SettingScreen(),
  ];
  List childscreens = [
    const ChildHomeScreen(),
    const CommunityScreen(),
    const swishvideo(),
    const ScoreAnalytics(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    print(widget.type);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            navbaritem(LucideIcons.layoutDashboard),
            navbaritem(LucideIcons.users),
            navbaritem(LucideIcons.youtube),
            navbaritem(LucideIcons.pieChart),
            navbaritem(LucideIcons.settings),
          ],
        ),
        body: widget.type == "parent"
            ? parentscreens[_currentIndex]
            : widget.type == "kid"
                ? kidscreen[_currentIndex]
                : childscreens[_currentIndex]);
  }
}

navbaritem(icon) {
  return BottomNavigationBarItem(
    icon: Icon(icon, color: const Color(0xffEE7A1D)),
    label: '',
    tooltip: 'home',
    activeIcon: Container(
        decoration: BoxDecoration(
            color: const Color(0xffEE7A1D),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(15),
        child: Icon(
          icon,
          color: Colors.white,
        )),
  );
}
