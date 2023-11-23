// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              imagePath: "img/logotipoTecNM.png",
              commonName: "Maguey blanco o maguey serrano o mezcal",
              scientificName: "Agave americana.",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/LogotipoTecNM.png",
              commonName: "Cegadora ondulada",
              scientificName: "Opuntia microdasys undulata.",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/LogotipoTecNM.png",
              commonName: "Nopal monstruoso",
              scientificName: "Opuntia monacantha.",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/LogotipoTecNM.png",
              commonName: "Maguey Amarillo",
              scientificName: "Agave americana var. marginata.",
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/LogotipoTecNM.png",
              commonName: "Cardón",
              scientificName: "Pachycereus Pecten-Aboriginum.",
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
