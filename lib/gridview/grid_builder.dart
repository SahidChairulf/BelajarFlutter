import 'package:flutter/material.dart';


class GridBuilder extends StatelessWidget {
  GridBuilder({super.key});

  @override
  var data = 1;
  var color = 0;
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 26,
      itemBuilder: (context , index ) {
        return Container(
          child: Card(
            color: Colors.greenAccent[color += 100],
            child: Center(
              child: Text(
              "${String.fromCharCode(64 + data++)}",
              style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        );
      }
    );
  }
}