// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta1.dart';
import 'package:itsaplant/plantas/planta2.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: cactaceasDeserticas(),
  ));
}

class cactaceasDeserticas extends StatefulWidget {
  const cactaceasDeserticas({Key? key}) : super(key: key);

  @override
  State<cactaceasDeserticas> createState() => _cactaceasDeserticas();
}

class _cactaceasDeserticas extends State<cactaceasDeserticas> {
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Planta(titulo: "Hola", imagePath: "img/cenizo.jpeg", description: "Descripcion",)),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/cenizo.jpeg",
              commonName: "prueba",
              scientificName: "hola",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Planta(titulo: "Hola", imagePath: "img/cenizo.jpeg", description: "Descripcion",)),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/cenizo.jpeg",
              commonName: "prueba",
              scientificName: "hola",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Planta2()),
                );
              },
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
