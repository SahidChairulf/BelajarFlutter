import 'package:flutter/material.dart';

class OutputFormGalaxy extends StatelessWidget {
  final String nama, galaxy, pergi, jumlah, image;
  final double harga;
  OutputFormGalaxy(
      {Key? key,
      required this.nama,
      required this.galaxy,
      required this.pergi,
      required this.jumlah,
      required this.harga,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
           leading: BackButton(
          color: Colors.white,
          ),
          title: Column(
            children: <Widget>[
              Text(
                'AppTest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                'MeetingMaster',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
                )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0)
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
              "nama : $nama",
              textAlign: TextAlign.start,
            ),
            Text(
              "Jenis Galaxy: $galaxy",
              textAlign: TextAlign.start,
            ),
            Text(
              "jumlah Orang : $jumlah",
              textAlign: TextAlign.start,
            ),
            Text(
              "Tanggal Pergi : $pergi",
              textAlign: TextAlign.start,
            ),
            Text(
              "Total Harga : $harga",
              textAlign: TextAlign.start,
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}