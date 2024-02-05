import 'package:apptest/helpers/size_helper.dart';
import 'package:apptest/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class ListGalaxyScreen extends StatelessWidget {
  final List<Map<String, dynamic>> galaxyData = [
    {
      "name": "GALAXY LOVE RED UMBER",
      "image": "../assets/images/galaxy_love.jpg",
      "desc": "DESC ...",
    },
    {
      "name": "GALAXY LOVE RED UMBER",
      "image": "../assets/images/galaxy_love.jpg",
      "desc": "DESC ...",
    },
    {
      "name": "GALAXY LOVE RED UMBER",
      "image": "../assets/images/galaxy_love.jpg",
      "desc": "DESC ...",
    },
    {
      "name": "GALAXY LOVE RED UMBER",
      "image": "../assets/images/galaxy_love.jpg",
      "desc": "DESC ...",
    },
    {
      "name": "GALAXY LOVE RED UMBER",
      "image": "../assets/images/galaxy_love.jpg",
      "desc": "DESC ...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
         color: Colors.white
            // image: DecorationImage(
            //     image: AssetImage("../assets/images/bg.jpg"),
            //     fit: BoxFit.cover)
                ),
        child: ListView.builder(
          itemCount: galaxyData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailGalaxyScreen(
                            name: galaxyData[index]['name'],
                            image: galaxyData[index]['image'],
                            desc: galaxyData[index]['desc'],
                          )),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.55,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${galaxyData[index]["image"]}"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: Text(
                    "${galaxyData[index]["name"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
