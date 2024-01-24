import 'package:flutter/material.dart';

class ListDasar extends StatelessWidget {
  const ListDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey[400]
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey[600]
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey[800]
            ),
          )
        ],
      ),
    );
  }
}