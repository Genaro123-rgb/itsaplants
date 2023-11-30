// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: CactaceasMunicipio(),
  ));
}

class CactaceasMunicipio extends StatefulWidget {
  const CactaceasMunicipio({Key? key}) : super(key: key);

  @override
  State<CactaceasMunicipio> createState() => _CactaceasMunicipioState();
}

class _CactaceasMunicipioState extends State<CactaceasMunicipio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Cetáceas Municipales',
          style: GoogleFonts.orelegaOne(
            textStyle: TextStyle(
              fontSize: 27, color: Colors.white,
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
              imagePath: "img/viznaga_ganchuda.png",
              commonName: "Viznaga",
              scientificName: "(Hamatocactus\nsetispinus)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo:
                                "Viznaga Ganchuda (Hamatocactus setispinus)",
                            imgPath: "img/viznaga_ganchuda.png",
                            descripcion:
                                "Tallos globosos, que se van alargando, de color verde glauco o brillante. \n Costillas pronunciadas, espiraladas. Aréolas con glándulas nectaríferas. \n Espinas centrales flexibles, alargadas y ganchudas. En verano, en el ápice del tallo, brotan flores diurnas, perfumadas, autofértiles, infundibuliformes, de color amarillo o amarillo con el centro rojo. \n Las flores son polinizadas por abejas. Frutos esféricos u ovoides, anaranjados o verdes o rojos, carnosos e indehiscentes.\n Semillas negras, reticuladas o foveoladas.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/cactus_arcoiris.png",
              commonName: "Cactus",
              scientificName: "(Echinocereus\nperbellus)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Cactus Arcoiris (Echinocereus perbellus)",
                            imgPath: "img/cactus_arcoiris.png",
                            descripcion: "Planta de tallo cilíndrico que puede alcanzar hasta 30 cm de altura por 10 cm de diámetro.\n Dicho tallo de color verde militar, está dividido en 20 o más costillas cargadas con areolas espaciadas 3 mm una de otra. \n Cada areola posee de 20 a 25 espinas radiales color crema con las puntas café claro. Además, cada areola tiene de 3 a 5 espinas centrales de color café oscuro de 1 cm de largo.  \n  Sus flores son amarillas en su interior, raras veces coloreadas de rosa pálido o morado claro. \n Pueden alcanzar un diámetro hasta de 10 cm por 5 cm de largo. Sus frutos son globosos, de más de 4 cm de diámetro, de color rojo ocre y están cubiertos de finas espinas.\n Cada fruto contiene decenas de semillas negras, menores a 1 mm de diámetro.",
                          )),

                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Strawberry_cactus.jpg",
              commonName: "Strawberry\ncactus",
              scientificName: "(Echinocereus\nenneacanthus)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Strawberry cactus (Echinocereus enneacanthus)",
                            imgPath: "img/Strawberry_cactus.jpg",
                            descripcion: "También conocido como strawberry cactus, es una especie de cactus perteneciente a la familia Cactaceae. Es endémica de México, donde se encuentra en los estados de Sonora, Chihuahua, Coahuila, Nuevo León y Tamaulipas. \n El Echinocereus enneacanthus es un cactus de crecimiento cespitoso, que forma grupos densos de tallos. Los tallos son cilíndricos, de color verde claro a verde oscuro, y pueden alcanzar hasta 50 cm de altura. Las espinas son radiales y centrales, y pueden ser de color blanco, amarillo o rojo. Las flores son de color rosa o rojo, y se producen en la primavera.\n El Echinocereus enneacanthus no se encuentra amenazada a nivel global. Sin embargo, en algunas regiones, se considera una especie vulnerable, debido a la recolección excesiva para el comercio de plantas ornamentales.",
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
