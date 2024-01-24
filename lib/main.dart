import 'package:apptest/latihan_tiga.dart';
import 'package:apptest/latihan_ui.dart';
import 'package:apptest/listview/list_basic.dart';
import 'package:apptest/listview/list_separated.dart';
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
        body: LatihanUi(),
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