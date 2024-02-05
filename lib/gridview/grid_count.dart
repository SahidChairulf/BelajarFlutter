import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  GridCount({super.key});

  @override
  var data = 'A';
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        15, 
        (index) => Container(
          child: Card(
            color: Colors.blueAccent,
            child: Center(child: Text("${data}")),
          ),
        )
        ),
    );
  }
}