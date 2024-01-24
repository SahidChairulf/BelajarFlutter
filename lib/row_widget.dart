import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('INI ROW 1'),
        Text('INI ROW 2'),
        Text('INI ROW 3'),
        Column(
          children: [
            Text('INI COLUMN DARI ROW 1'),
            Text('INI COLUMN DARI ROW 2'),
            Text('INI COLUMN DARI ROW 3'),
          ],
        )
      ],
    );
  }
}