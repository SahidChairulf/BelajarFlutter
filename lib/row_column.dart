import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
        Text('INI COLUMN 1'),
        Text('INI COLUMN 2'),
        Text('INI COLUMN 3'),
          ],
        )
      ],
    );
  }
}