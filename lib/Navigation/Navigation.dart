import "package:flutter/material.dart";
import 'package:flutter_news/screens/homePage.dart';
import 'package:flutter_news/screens/newsfeed.dart';
import 'package:flutter_news/screens/videos.dart';
import 'package:flutter_news/screens/weather.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  static const List _pages = [HomePage(), Newsfeed(), Videos(), Weather()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
                selectedIndex: _selectedIndex,
                backgroundColor: Colors.white,
                gap: 8,
                color: Colors.grey.shade500,
                activeColor: Colors.red,
                padding: EdgeInsets.all(8),
                tabBackgroundColor: Colors.orange.shade50,
                onTabChange: navigationBar,
                tabs: [
                  GButton(icon: Icons.home, text: "Home"),
                  GButton(icon: Icons.newspaper, text: "News"),
                  GButton(icon: Icons.video_collection, text: "Videos"),
                  GButton(icon: Icons.sunny_snowing, text: "Weather"),
                ]),
          ),
        ),
      ),
    );
  }
}
