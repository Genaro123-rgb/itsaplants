// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: procuracionEspecies(),
  ));
}

class procuracionEspecies extends StatefulWidget {
  const procuracionEspecies({Key? key}) : super(key: key);

  @override
  State<procuracionEspecies> createState() => _procuracionEspeciesState();
}

class _procuracionEspeciesState extends State<procuracionEspecies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Procuración Nativa',
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
              imagePath: "img/Texas_Bluebonnet.jpg",
              commonName: "Texas\nBluebonnet",
              scientificName: "(Lupinus Texensis)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Planta(
    titulo: "Texas Bluebonnet (Lupinus Texensis)",
    imgPath: "img/Texas_Bluebonnet.jpg",
    descripcion: "Herbácea anual de 15-45 cm de altura. Tallos ramificados con hojas palmadas de color verde claro, usualmente con cinco folíolos.\n Inflorescencias terminales, racemosas, con hasta 50 flores fragantes de color azul intenso o blanco.\n Fruto en forma de vaina plana con dos o más semillas.\n Florece en primavera, de marzo a mayo.\n Atrae a diversas especies de mariposas, polillas y es polinizada por abejas.",
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