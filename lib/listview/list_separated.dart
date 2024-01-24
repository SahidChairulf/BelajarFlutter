import 'package:flutter/material.dart';

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class ListSeparated extends StatelessWidget {
  ListSeparated({super.key});

  final List<ListItem> itemlist = [
    ListItem(Colors.red, "RED"),
    ListItem(Colors.yellow, "YELLOW"),
    ListItem(Colors.green, "GREEN"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: itemlist.length,
        separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 200,
            color: itemlist[index].color,
            child: Center(
              child: Text(itemlist[index].text),
            ),
          );
        },
      ),
    );
  }
}