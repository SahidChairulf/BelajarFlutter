import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {
        //         Navigator.pushNamed(context, '/second');
        //       },
        //       child: Text("Second Screen"),
        //     ),
        //     SizedBox(
        //       height: 18,
        //     ),
        //     ElevatedButton(
        //         onPressed: () {
        //           Navigator.pushNamed(context, '/third');
        //         },
        //         child: Text("Third Screen"))
        //   ],
        // ),
      ),
    );
  }
}
