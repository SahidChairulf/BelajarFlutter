import 'package:apptest/gridview/grid_builder.dart';
import 'package:apptest/gridview/grid_count.dart';
import 'package:apptest/gridview/grid_dasar.dart';
import 'package:apptest/gridview/latihan_grid.dart';
import 'package:apptest/latihan_tiga.dart';
import 'package:apptest/latihan_ui.dart';
import 'package:apptest/listview/list_basic.dart';
import 'package:apptest/listview/list_separated.dart';
import 'package:apptest/screens/detail_screen.dart';
import 'package:apptest/screens/home_screen.dart';
import 'package:apptest/screens/list_screen.dart';
import 'package:apptest/screens/menu_screen.dart';
import 'package:apptest/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppTest',
      initialRoute: '/',
      routes: {
      // '/': (context) => const NavigationMenu(),
      // '/second': (context) => const SecondScreen(),
      // '/third': (context) => const ThirdScreen(),
      '/list' : (context) => ListGalaxyScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Column(
            children: <Widget>[
              Text(
                'AppTest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                'MeetingMaster',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
                )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0)
        ),
        body:NavigationMenu(),        
      ),

    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello World'.toUpperCase(),
      style: TextStyle(
        fontSize: 30 ,fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}