// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: arboles(),
  ));
}

class arboles extends StatefulWidget {
  const arboles({Key? key}) : super(key: key);

  @override
  State<arboles> createState() => _arbolesState();
}

class _arbolesState extends State<arboles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Árboles',
          style: GoogleFonts.orelegaOne(
            textStyle: TextStyle(
              fontSize: 30, color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 55, 92, 55),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            CustomListItem(
              imagePath: "img/cedro.jpg",
              commonName: "Cedro Rojo",
              scientificName: "(Cedrela\nodorata)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Planta(
titulo:"Cedro Rojo (Cedrela odorata)",
imgPath:"img/cedro.jpg",
descripcion: 
"El Cedro Rojo (Cedrela odorata) es un árbol majestuoso que destaca por su imponente altura, alcanzando entre 30 y 40 metros, con un tronco recto y cilíndrico que exhibe una corteza gris a marrón, marcada por fisuras longitudinales. \n Su frondoso follaje, compuesto por hojas alternas y dentadas, proporciona sombra densa en su entorno. Durante la primavera o el verano, el árbol se adorna con pequeñas flores perfumadas que se agrupan en panículas, seguidas por cápsulas leñosas que contienen numerosas semillas aladas.",
)),

                );
              },
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),

      //ListaPlants1(),
    );
  }
}
