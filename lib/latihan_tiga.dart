import 'package:flutter/material.dart';

class LatihanTiga extends StatelessWidget {
  const LatihanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: 
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: 480,
              height: 150,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://assets.mspimages.in/gear/wp-content/uploads/2023/02/marvel.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 450,
                  height: 200,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey,

                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(left: 5.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.marvel.com/content/1x/02_lunarx_slipcasefront_1_14.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 280,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(),
                            child: Column(
                              children: [
                                Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book")
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
                  child: Center(
                    child: Text(
                      'Marvel Film Collection'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 190,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 190,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 190,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
      ),
    );
  }
}
