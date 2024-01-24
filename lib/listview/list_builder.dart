import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  ListBuilder({super.key});

  final List<Color> colorlist = [Colors.red , Colors.yellow , Colors.green ,];
  final List<String> textlist = ['RED' , 'YELLOW' , 'GREEN'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: colorlist.length,
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 200,
            color: colorlist[index],
            child: Center(
              child: Text(textlist[index]),
            ),
          );
        },
      ),
    );

  }
}