// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: plantaSerrania(),
  ));
}

class plantaSerrania extends StatefulWidget {
  const plantaSerrania({Key? key}) : super(key: key);

  @override
  State<plantaSerrania> createState() => _plantaSerraniaState();
}

class _plantaSerraniaState extends State<plantaSerrania> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Serranías del Burro',
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
              imagePath: "img/Yuca.jpg",
              commonName: "Yuca",
              scientificName: "(Yucca\nElephantipes)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Yuca (Yucca Elephantipes)",
                            imgPath: "img/Yuca.jpg",
                            descripcion:
                                "Plantas de hasta 8 m de alto. Tallo desnudo en toda su extensión, excepto en el ápice. Hojas hasta de 60 cm de largo, 5 a 8 cm de ancho, coriáceas, ápice puntiagudo, márgenes serrados y con frecuencia fibrilosos, nacen en rosetas en el ápice del tallo o ramas.\n Inflorescencias paniculadas, erectas o colgantes, 1 a 2 m de largo, que generalmente se traslapan con las hojas. \n Flores en forma de copa, 4 cm de largo, con textura como cera, blancas o color crema, se abren en la noche, fragantes, suculentas. \n Perianto de 6 tépalos, libres o fusionados en la base; estambres 6, hipóginos; ovario sésil, 3-lóculos, con estilo grueso y 3-lobado en el ápice. Frutos cápsulas, en ocasiones algo carnosos, oblongo-ovoides.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Ocotillo_o_albarda.jpg",
              commonName: "Ocotillo",
              scientificName: "(Fouquieria\nSplendins)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Ocotillo (Fouquieria Splendins)",
                            imgPath: "img/Ocotillo_o_albarda.jpg",
                            descripcion:
                                "Es una planta dentro del género Fouquieria de la familia Fouquieriaceae. Tiene apariencia de un arbusto formado de palos erectos secos de color grisáceo. En la temporada de lluvias tiene hojas pequeñas y ovaladas. En México se distribuye desde la parte central del norte hasta el bajío. Habita en lugares con presencia de matorrales. Principalmente se utiliza para delimitar las fronteras de los terrenos.\n Durante la mayor parte del año, la planta parece ser un conjunto de grandes palillos muertos, los tallos de la planta están parcialmente verdes. Con las precipitaciones de las escasas lluvias, la planta se llega a cubrir rápidamente con un gran número de hojas ovales pequeñas (2 a 4 centímetros), que puede permanecer durante semanas o incluso meses.\n Los vástagos pueden alcanzar un diámetro de 5 centímetros en la base, y la planta puede alcanzar una altura de 10 m. La planta ramifica muy pesadamente en su base, pero sobre esta las ramas son como de poste y se dividen solamente más lejos de la base, y los especímenes en cultivos pueden no tener ninguna rama secundaria.\n Los ramilletes de hojas endurecen embutidos entre espinas dorsales, y las hojas nuevas brotan de la base de la espina dorsal.\n El rojo brillante de las flores aparece en la primavera y el verano, ocurriendo mientras que un grupo pequeño con forma de tubo en la extremidad del vástago.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Candelilla.jpg",
              commonName: "Candelilla",
              scientificName: "(Euphorbia\nantisyphilitica)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Candelilla (Euphorbia antisyphilitica)",
                            imgPath: "img/Candelilla.jpgsp",
                            descripcion:
                                "Es un arbusto siempre verde, de hasta 90 cm de altura, la mayoría de los tallos sin hojas. Tiene los tallos densamente compactos, erectos. Se le llama también, en ocasiones, la planta de cera, pero este nombre se aplica también al género Hoya. El nombre común de la planta, “candelilla”, parece provenir de la forma particular de los tallos del arbusto largos, rectos, erectos y recubiertos de cera los cuales presentan la apariencia de pequeñas velas (“candelas”). Algunas otras versiones indican que la candelilla se quemaba directamente para iluminación, haciendo las funciones propias de una vela.\n La planta crece normalmente en zonas de clima semi-desértico, principalmente en laderas de suelo calcáreo, asociadas con formaciones de material rocoso. La raíz de la planta es relativamente pequeña. Una planta de tamaño moderado puede desarrollar más de 100 tallos de color verde grisáceo. \n La planta de candelilla se llena de pequeñas flores color rosa en la temporada de lluvias. Las formaciones de candelilla son más abundantes en elevaciones del orden de 800 m y se asocian comúnmente con plantas de lechuguilla, sotol, pasto chino, ocotillo y cactos diversos. La candelilla es muy resistente al ataque de plagas y enfermedades y es consumida de forma muy limitada por algunas especies de la fauna silvestre de la región.",
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
