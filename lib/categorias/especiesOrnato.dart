// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/customListItem.dart';

void main() {
  runApp(MaterialApp(
    home: especiesOrnato(),
  ));
}

class especiesOrnato extends StatefulWidget {
  const especiesOrnato({Key? key}) : super(key: key);

  @override
  State<especiesOrnato> createState() => _especiesOrnatoState();
}

class _especiesOrnatoState extends State<especiesOrnato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Especies de Ornato',
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
                                "Plantas de hasta 8 m de alto. Tallo desnudo en toda su extensión, excepto en el ápice.\n Hojas hasta de 60 cm de largo, 5 a 8 cm de ancho, coriáceas, ápice puntiagudo, márgenes serrados y con frecuencia fibrilosos, nacen en rosetas en el ápice del tallo o ramas.\n Inflorescencias paniculadas, erectas o colgantes, 1 a 2 m de largo, que generalmente se traslapan con las hojas.\n Flores en forma de copa, 4 cm de largo, con textura como cera, blancas o color crema, se abren en la noche, fragantes, suculentas.\n Perianto de 6 tépalos, libres o fusionados en la base; estambres 6, hipóginos; ovario sésil, 3-lóculos, con estilo grueso y 3-lobado en el ápice. Frutos cápsulas, en ocasiones algo carnosos, oblongo-ovoides. ",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Cactus_de_Lily.jpg",
              commonName: "Cactus Lily",
              scientificName: "(Echinopsis\nsubdenudata)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Cactus Lily (Echinopsis subdenudata)",
                            imgPath: "img/Cactus_de_Lily.jpg",
                            descripcion:
                                "Echinopsis subdenudata es una especie de plantas de la familia Cactaceae, endémica de Tarija en Bolivia y Paraguay. Su cultivo se ha extendido por todo el mundo.\ Cactus de forma globular, puede crecer solitario o emitir hijuelos casi a nivel de la base hasta formar una colonia compacta. Tiene de 8 a 12 costillas muy prominentes con areolas lanosas donde se ocultan de 3 a 7 espinas radiales y 1 central muy pequeñas (1,5 - 2 mm), en ocasiones ausentes. \n Flores tubulares de 15 a 22 cm de largo, fragantes de color blanco o rosa claro. Duran un solo día. Los ejemplares adultos son muy floríferos. La floración se extiende desde la primavera hasta finales del Verano.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Planta_lagarto.jpg",
              commonName: "Planta Lagarto",
              scientificName: "(Kalanchoe\ndaigremontiana)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Planta Lagarto (Kalanchoe daigremontiana)",
                            imgPath: "img/Planta_lagarto.jpg",
                            descripcion:
                                "Esta planta tiene la característica inusual de producir brotes de nuevas plántulas a lo largo del margen de sus hojas, que se desprenden y emiten raíces fácilmente al caer al suelo.\n  De tallo erecto, puede alcanzar hasta 1 m de altura; hojas opuestas, carnosas, oblongo-lanceoladas que pueden llegar a los 15–20 cm de largo y unos 4-5 cm de ancho. Son de color verde medio por el haz y con manchas púrpura en el envés. Los márgenes en forma de cuchara poseen unos pequeños espolones bulbíferos de donde surgen los brotes de las nuevas plantas. \n Las plantas adultas también pueden desarrollar raíces laterales en las estructuras de su tallo principal, alcanzando los 10–15 cm del suelo. Las hojas tienden a desarrollarse en la parte alta del tallo, que alcanza así gran peso; esto provoca que el tallo principal se doble hacia abajo y emita raíces laterales, produciendo finalmente, el desarrollo de nuevos tallos primarios que se establecerán como plantas independientes.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/crespon.jpg",
              commonName: "Crespón",
              scientificName: "(Lagerstroemia\nindica)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Crespón (Lagerstroemia indica)",
                            imgPath: "img/crespon.jpg",
                            descripcion:
                                "Se trata de una planta que soporta las bajas temperaturas, aunque el frío puede impedir su floración, por lo que se recomienda su cultivo en regiones donde haya veranos calurosos e inviernos suaves.\nEsta especie es muy utilizada para decorar jardines grandes y pequeños, balcones y terrazas, a los que aporta un toque de color que se extiende a lo largo de todo el año, ya que en primavera sus hojas se muestran rojizas y luego se tornan verdes, para luego volver al tono rojo durante otoño e invierno.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Fresno.jpg",
              commonName: "Fresno",
              scientificName: "(Fraxinus\nexcelsior)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Fresno (Fraxinus excelsior)",
                            imgPath: "img/Fresno.jpg",
                            descripcion:
                                "El fresno común es un árbol caducifolio que puede alcanzar alturas de 20 a 40 metros. \n Tiene un tronco recto y una copa redondeada. Las hojas son opuestas, compuestas y pinnadas, generalmente con 7 a 13 folíolos lanceolados y serrados en los bordes. \n En primavera, antes de que aparezcan las hojas, el árbol produce racimos de flores pequeñas y verde pálido. Las semillas se encuentran en samaras aladas que caen en otoño. \n Esta especie de fresno es apreciada por su madera resistente y elástica, que se utiliza en la fabricación de muebles, herramientas y otros productos. \n Además, los fresnos son importantes para el ecosistema, proporcionando alimento y hábitat para diversas especies de vida silvestre.",
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
