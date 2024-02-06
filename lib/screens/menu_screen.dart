import 'package:apptest/screens/detail_screen.dart';
import 'package:apptest/screens/form_galaxy.dart';
import 'package:apptest/screens/home_screen.dart';
import 'package:apptest/screens/input_form_screen.dart';
import 'package:apptest/screens/list_screen.dart';
import 'package:apptest/screens/second_screen.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => __NavigationMenuState();
}

class __NavigationMenuState extends State<NavigationMenu> {
  int _selectedTab = 0;
  List _pages = [
    HomeScreen(),
    ListGalaxyScreen(),
    BelajarForm(),
    FormGalaxy()
  ];
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Acount"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Go"),
        ],
      ),
      );
  }
}