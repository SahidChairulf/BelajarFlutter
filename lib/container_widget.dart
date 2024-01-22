import 'dart:html';

import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 145, 255),
      ),
      padding: EdgeInsets.all(5),
      child: LayerKedua(
      ),
    );
    
  }
}

class LayerKedua extends StatelessWidget {
  const LayerKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 68, 255),
         borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)), 
      ),
      padding: EdgeInsets.all(5),
      child: LayerKetiga (
      ),
    );
  }
}

class LayerKetiga extends StatelessWidget {
  const LayerKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 6, 0, 186),
         borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)), 
      ),
      padding: EdgeInsets.all(5),
      child: LayerKeempat (
      ),
    );
  }
}

class LayerKeempat extends StatelessWidget {
  const LayerKeempat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                    "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
                    ),
            fit: BoxFit.cover
        ),
         borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)), 
      ),
      padding: EdgeInsets.all(5),
      // child: (
      // ),
    );
  }
}