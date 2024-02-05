import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});

  @override
  var data = 1;
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: 500,
                height: 300,
                margin: EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 3,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(26, 
                  (index) => Container(
                    child: Card(
                     color: Colors.blueAccent,
                     child: Center(child: 
                     Text("${String.fromCharCode(64 + data++)}")),
                    ),
                  )
                  ),
                ),
              )
            ],
          ),
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 1,
          children: [
          Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.all(15),
            color: Colors.yellowAccent,
            child: Center(
            child: FlutterLogo(),
            ),
          ),
           Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.all(15),
            color: Colors.yellowAccent,
            child: Center(
            child: FlutterLogo(),
            ),
          ),
           Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.all(15),
            color: Colors.yellowAccent,
            child: Center(
            child: FlutterLogo(),
            ),
          ),
           Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.all(15),
            color: Colors.yellowAccent,
            child: Center(
            child: FlutterLogo(),
            ),
          ),
        ],
        )
          ],
      ),
    );
  }
}