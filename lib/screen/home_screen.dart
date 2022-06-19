import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // void _navigateBottomTabBar(int index) {
  //   setState()
  //   ){
  //   _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Salam"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomTabBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_rounded), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "home"),
        ],
      ),
    );
  }
}
