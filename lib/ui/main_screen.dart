import 'package:flutter/material.dart';
import 'package:pooria50/ui/pages/explore_screen.dart';
import 'package:pooria50/ui/pages/profile_screen.dart';
import 'package:pooria50/ui/pages/reel_screen.dart';
import 'package:pooria50/ui/pages/timeline_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _navigateBottomTabBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _widgetOptions = [
    TimeLineScreen(),
    // HomeScreen(),
    ExploreScreen(),
    ReelScreen(),
    // PublishScreen(),
    // HeartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomTabBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "timeline"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.shop_2_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "explore"),
          BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: "reel"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.smart_display), label: "publish"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.heart_broken_rounded), label: "heart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
