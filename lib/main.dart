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
                'Aplikasi Test',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0)
        ),
        body: Center(
          child: Text('Hello World'.toUpperCase(),
          style: TextStyle(
            fontSize: 30 ,fontWeight: FontWeight.bold,
          ),
          
          ),
        ),
      ),
    );
  }
}