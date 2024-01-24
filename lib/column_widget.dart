import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('INI COLUMN 1'),
        Text('INI COLUMN 2'),
        Text('INI COLUMN 3'),
        Row(
          children: [
            Text('INI ROW DARI COLUMN 1'),
            Text('INI ROW DARI COLUMN 2'),
            Text('INI ROW DARI COLUMN 3'),
          ],
        )
      ],
    );
  }
}