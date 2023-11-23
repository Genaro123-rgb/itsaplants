// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: especiesNativas(),
  ));
}

class especiesNativas extends StatefulWidget {
  const especiesNativas({Key? key}) : super(key: key);

  @override
  State<especiesNativas> createState() => _especiesNativasState();
}

class _especiesNativasState extends State<especiesNativas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 84, 77),
      appBar: AppBar(
        title: Text(
          'ITSA Plants',
          style: GoogleFonts.orelegaOne(
            textStyle: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            CustomListItem(
              imagePath: "img/cenizo.jpeg",
              commonName: "prueba",
              scientificName: "hola",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/hizache.jpg",
              commonName: "prueba",
              scientificName: "hola",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/mezquite.jpg",
              commonName: "prueba",
              scientificName: "hola",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/cenizo.jpeg",
              commonName: "prueba",
              scientificName: "hola",
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
