import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
            Text('Hello World'),
            FlutterLogo(size: 30)
              ],
            ),
            Column(
              children: [
            Text('Hello World'),
            FlutterLogo(size: 30)
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 50)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
            Text('Hello World'),
            FlutterLogo(size: 30)
              ],
            ),
             Column(
              children: [
            Text('Hello World'),
            FlutterLogo(size: 30)
              ],
            )
          ],
        ),
      ],
    );
  }
}