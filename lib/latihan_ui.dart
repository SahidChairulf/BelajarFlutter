import 'package:flutter/material.dart';

class ListItem {
  final String url;
  final String text;

  ListItem(this.url, this.text);
}

class LatihanUi extends StatelessWidget {
  LatihanUi({super.key});

  final List<ListItem> itemlist = [
    ListItem(
        "https://cdn.marvel.com/content/1x/02_lunarx_slipcasefront_1_14.jpg",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
    ListItem(
        "https://cdn.marvel.com/content/1x/02_lunarx_slipcasefront_1_14.jpg",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
    ListItem(
        "https://cdn.marvel.com/content/1x/02_lunarx_slipcasefront_1_14.jpg",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
  ];

  final List<String> urlimage = [
    'https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg',
    'https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg',
    'https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg',
    'https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg',
    'https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg',
    'https://i.ebayimg.com/images/g/tfQAAOSw4Pti7veF/s-l1600.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 490,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 450,
                    height: 200,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: itemlist.length,
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(0),
                          width: 300,
                          height: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 180,
                                    height: 180,
                                    margin:
                                        EdgeInsets.only(left: 2.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                itemlist[index].url),
                                            fit: BoxFit.cover)),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 240,
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.all(5),
                                    child: Text(itemlist[index].text,
                                        textAlign: TextAlign.justify),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
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
              Container(
                width: 450,
                height: 200,
                margin: EdgeInsets.all(0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: urlimage.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                image: DecorationImage(
                                    image: NetworkImage(urlimage[index]))),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
