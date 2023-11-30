// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: plantasPropAves(),
  ));
}

class plantasPropAves extends StatefulWidget {
  const plantasPropAves({Key? key}) : super(key: key);

  @override
  State<plantasPropAves> createState() => _plantasPropAvesState();
}

class _plantasPropAvesState extends State<plantasPropAves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Propagadas por Aves',
          style: GoogleFonts.orelegaOne(
            textStyle: TextStyle(
              fontSize: 25, color: Colors.white,
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
              imagePath: "img/girasol_silvestre.jpg",
              commonName: "Girasol Silvestre",
              scientificName: "(Helianthus annuus)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Girasol Silvestre (Helianthus annuus)",
                            imgPath: "img/girasol_silvestre.jpg",
                            descripcion:
                                " Es una planta herbácea anual de la familia de las asteráceas originaria de Centro y Norteamérica y cultivada como alimenticia, oleaginosa y ornamental en todo el mundo.\nLos girasoles son plantas anuales (como lo indica su nombre específico latín: annuus) que pueden medir tres metros de alto. Los tallos son generalmente erectos e hispidos. La mayoría de las hojas son caulinares, alternas, pecioladas, con base cordiforme y bordes aserrados. La cara inferior es usualmente más o menos hispida, a veces glandulosa y la superior glabra.\nEl involucro es hemiesférico o anchado y mide 15-40 mm y hasta más de 20 cm. Las brácteas involúcrales llamadas filiaros se encuentran en número de 20-30, y hasta más de 100, ovaladas a lanceoladas —brutalmente estrechadas en el ápice— nerviadas longitudinalmente, con el borde generalmente hispido o hirsuto, al igual que sus caras exteriores, raramente son glabras. \n Receptáculo con escamas centimétricas tridentadas, con el diente mediano más grande y la punta hirsuta. \n Las lígulas, en número de 15-30, y hasta 100, de color amarillo a anaranjado hasta rojas, miden 2,5-5 cm; los flósculos, de 150 hasta 1000, del mismo color con los estambres pardos-rojizos. Los frutos son aquenios ovalados, algo truncados en la base, de 3-15 mm de largo, glabros o casi, estriados por finísimos surcos verticales, de color oscuro, generalmente casi negras —aunque pueden ser también blanquecinas, rojizas, de color miel o bien moteados o con bandas longitudinales más claras—. El vilano consiste en dos escamas lanceoladas de 2-3,5 mm acompañadas, o no, de hasta cuatro escamitas obtusas de 0,5-1 mm, todas tempranamente caedizas,4 (como lo indica su nombre específico latín: annuus).",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/algodon.jpg",
              commonName: "Algodón",
              scientificName: "(Gossypium)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                          titulo: " Algodón (Gossypium)",
                          imgPath: "img/algodon.jpg",
                          descripcion:
                              "Gossypium hirsutum, conocido como algodón de tierras altas o algodón mexicano, es la especie dominante en la producción de algodón, representando el 95% de la producción en los Estados Unidos y alrededor del 90% a nivel mundial. \nEste cultivo es altamente valorado ya que solo pierde el 10% de su peso durante el procesamiento.\nLas cápsulas de semillas del algodón se abren, y las fibras se secan enredándose idealmente para la fabricación de hilo. \nCada fibra está compuesta por 20 o 30 capas de celulosa enrolladas en resortes naturales, lo que confiere propiedades únicas de durabilidad, resistencia y  absorción al algodón. La fibra se utiliza para hacer hilados e hilaturas, que se tejen y tiñen para formar telas.\n Estas telas se cortan y cosen para crear una variedad de productos textiles, destacando su papel esencial en la industria textil.")),
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
