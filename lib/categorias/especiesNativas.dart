// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
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
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Especies Nativas',
          style: GoogleFonts.orelegaOne(
            textStyle: TextStyle(
              fontSize: 30,
              color: Colors.white,
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
              imagePath: "img/cenizo.jpeg",
              commonName: "Cenizo",
              scientificName: "(Leucophyllum\nfrutescens)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Cenizo (Leucophyllum frutescens)",
                            imgPath: "img/cenizo.jpeg",
                            descripcion:
                                "Es un arbusto siempreverde del género Leucophyllum en la familia Scrophulariaceae;es nativo del norte de México y del sudoeste de los Estados Unidos.\n Las flores tienen forma de campana o embudo, con cinco lóbulos y dos labios. Estos arbustos se encuentran en suelos arenosos y tienen una gran tolerancia a la sal. \n Se han hecho populares como plantas de ornato limitadoras o centrales en plantaciones cálidas y secas, pues ellas tienen bajos requerimientos de agua y se les puede dar forma de setos, además de que florecen sobre toda su superficie. ",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/mezquite.jpg",
              commonName: "Mezquite",
              scientificName: "(Prosopis\nlaevigata)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Mezquite (Prosopis laevigata)",
                            imgPath: "img/mezquite.jpg",
                            descripcion:
                                "El mezquite blando, mezquite blanco o algarrobo (Prosopis laevigata) es una especie del género Prosopis o mezquite de la familia Fabaceae.\n Es un árbol de hasta 13 metros de altura, de hojas compuestas pequeñas con flores de color crema-amarillento.\n Se desarrolla en regiones áridas y semiáridas de México, desde Baja California sur y Sonora en México, hasta Bolivia, Perú, y noroeste de Argentina.\n Es muy importante ya que su madera es usada como combustible, para construcción de cercas, sus vainas como forraje y como alimento para el hombre; produce resina que tiene uso en la fabricación de pegamentos y barnices, mientras que sus flores son importantes para la producción de miel.\n Esta especie de mezquite se destaca por su papel ecológico muy importante ya que es un excelente fijador del suelo y por lo tanto, controlador de la erosión; es fijador de nitrógeno, lo cual mejora la fertilidad del suelo. Por otra",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/mezquite.png",
              commonName: "Retama",
              scientificName: "(Retama\nsphaerocarpa)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo:
                                "Retama o mezquite Amarillo (Retama sphaerocarpa)",
                            imgPath: "img/mezquite.png",
                            descripcion:
                                "La Retama sphaerocarpa, también conocida como retama amarilla o mezquite amarillo, es un arbusto perteneciente a la familia Fabaceae. Es originaria del Norte de África y de la península ibérica. Muy frecuente en casi toda la Península, excepto en los Pirineos, Cornisa Cantábrica, Galicia y buena parte de Portugal.\nLa Retama sphaerocarpa es un arbusto que puede alcanzar los 3 metros de altura. Generalmente desprovisto de hojas, es grisáceo y muy ramificado. Las ramas son delgadas y flexibles, de color verde grisáceo, más plateado a finales de primavera. Las flores son amarillas, muy vistosas, dispuestas en racimos axilares. El fruto es una legumbre, de color marrón, con semillas pequeñas. \n La Retama sphaerocarpa tiene una serie de usos, entre los que se incluyen:\nOrnamental: Es un arbusto muy decorativo, con flores amarillas muy vistosas. Se utiliza como planta ornamental en jardines y parques.\nMedicinal: La corteza y las hojas se utilizan en la medicina tradicional para tratar una variedad de afecciones, como la fiebre, la disentería y la diarrea.\nForraje: Las hojas y los frutos se utilizan como forraje para el ganado.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/hizache.jpg",
              commonName: "Huizache",
              scientificName: "(Vachellia\nfarnesiana)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo:
                                "Retama o mezquite Amarillo (Retama sphaerocarpa.)",
                            imgPath: "img/hizache.jpg",
                            descripcion:
                                "La Retama sphaerocarpa, también conocida como retama amarilla o mezquite amarillo, es un arbusto perteneciente a la familia Fabaceae. Es originaria del Norte de África y de la península ibérica. Muy frecuente en casi toda la Península, excepto en los Pirineos, Cornisa Cantábrica, Galicia y buena parte de Portugal.\nLa Retama sphaerocarpa es un arbusto que puede alcanzar los 3 metros de altura. Generalmente desprovisto de hojas, es grisáceo y muy ramificado. Las ramas son delgadas y flexibles, de color verde grisáceo, más plateado a finales de primavera. Las flores son amarillas, muy vistosas, dispuestas en racimos axilares. El fruto es una legumbre, de color marrón, con semillas pequeñas. \n La Retama sphaerocarpa tiene una serie de usos, entre los que se incluyen:\nOrnamental: Es un arbusto muy decorativo, con flores amarillas muy vistosas. Se utiliza como planta ornamental en jardines y parques.\nMedicinal: La corteza y las hojas se utilizan en la medicina tradicional para tratar una variedad de afecciones, como la fiebre, la disentería y la diarrea.\nForraje: Las hojas y los frutos se utilizan como forraje para el ganado.",
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
    );
  }
}
