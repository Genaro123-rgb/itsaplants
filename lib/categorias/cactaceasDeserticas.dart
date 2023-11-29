// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
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
              commonName: "pruebas",
              scientificName: "hola",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Yuccarr",
                            imgPath: "img/cenizo.jpeg",
                            descripcion: 'Yucca rostrata es una planta que alcanza los 4,5 m de altura. '
    'Tiene delgadas hojas que surgen de una roseta simétrica. '
    'Las inflorescencias de pequeñas flores de color blanco aparecen en otoño.'
    'Como una de las yucas más difíciles, Yucca rostrata se puede cultivar con éxito'
    'al aire libre hasta la zona de seguridad USDA y es popular en muchas ciudades desérticas'
    'como Palm Springs, CA, Phoenix, AZ y Las Vegas, NV, en el suroeste de Estados Unidos.'
    'La planta similar a un árbol también se cultiva comúnmente en las zonas de jardín 7 y 8'
    'en El Paso, Texas, Albuquerque, Nuevo México, Salt Lake City, Utah y Denver, Colorado.'
    'Más recientemente, Yucca rostrata se está utilizando en la playa en las zonas costeras'
    'de la Costa Este, y se puede encontrar en la costa de Carolina del Norte, Virginia Beach,'
    'VA, Ocean City, MD, y en Long Island, y NY.'

    'En el sur de Europa Yucca rostrata se cultiva en la región mediterránea subtropical, incluyendo el sur de Italia, España, Grecia y el sur de Francia. Rostrata también se cultiva en menor número norte en Europa templada en el Reino Unido, Alemania y otras áreas. En estas últimas zonas, el cultivo suele ser más difícil en los veranos fríos y los climas húmedos que se encuentran en estas zonas. Sin embargo, muchas personas en las partes más frías y húmedas del noroeste de Europa cubren Yucca rostrata en invierno para mantener la humedad fuera de la planta. Yucca rostrata también es popular en Australia y en ocasiones se utiliza como una planta de especímenes en paisajes domésticos.'

    'Yucca rostrata es una planta que alcanza los 4,5 m de altura. '
    'Tiene delgadas hojas que surgen de una roseta simétrica. '
    'Las inflorescencias de pequeñas flores de color blanco aparecen en otoño.'
    'Como una de las yucas más difíciles, Yucca rostrata se puede cultivar con éxito'
    'al aire libre hasta la zona de seguridad USDA y es popular en muchas ciudades desérticas'
    'como Palm Springs, CA, Phoenix, AZ y Las Vegas, NV, en el suroeste de Estados Unidos.'
    'La planta similar a un árbol también se cultiva comúnmente en las zonas de jardín 7 y 8'
    'en El Paso, Texas, Albuquerque, Nuevo México, Salt Lake City, Utah y Denver, Colorado.'
    'Más recientemente, Yucca rostrata se está utilizando en la playa en las zonas costeras'
    'de la Costa Este, y se puede encontrar en la costa de Carolina del Norte, Virginia Beach,'
    'VA, Ocean City, MD, y en Long Island, y NY.'

    'En el sur de Europa Yucca rostrata se cultiva en la región mediterránea subtropical, incluyendo el sur de Italia, España, Grecia y el sur de Francia. Rostrata también se cultiva en menor número norte en Europa templada en el Reino Unido, Alemania y otras áreas. En estas últimas zonas, el cultivo suele ser más difícil en los veranos fríos y los climas húmedos que se encuentran en estas zonas. Sin embargo, muchas personas en las partes más frías y húmedas del noroeste de Europa cubren Yucca rostrata en invierno para mantener la humedad fuera de la planta. Yucca rostrata también es popular en Australia y en ocasiones se utiliza como una planta de especímenes en paisajes domésticos.',
                          )),
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
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Hola",
                            imgPath: "img/cenizo.jpeg",
                            descripcion: "Descripcion",
                          )),
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
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Hola",
                            imgPath: "img/cenizo.jpeg",
                            descripcion: "Descripcion",
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
