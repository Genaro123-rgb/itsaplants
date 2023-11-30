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
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Otras regiones',
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
              imagePath: "img/Maguey_blanco.jpg",
              commonName: "Maguey blanco",
              scientificName: "(Agave americana)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo:
                                "Maguey blanco (Agave americana)",
                            imgPath: "img/Maguey_blanco.jpg",
                            descripcion:
                                "Planta que alcanza entre 2 y 2.5 m de altura, con hojas de color blanco grisáceo, fuertes dientes en el margen y espina terminal robusta.\n Hijuelos nacen en la base de plantas adultas. Inflorescencias (quiote) de 6-8 m de alto con flores verdes-amarillentas. Cultivada desde el nivel del mar hasta los 2,500 m de altitud.\n Encontrada en estado silvestre en Nuevo León y Tamaulipas, México ampliamente utilizada con fines ornamentales.",
                          )),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/cegadora_ondulada.jpg",
              commonName: "Cegadora\nOndulada",
              scientificName: "(Opuntia microdasys\nundulata)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "cegadora ondulada (Opuntia microdasys undulata)",
                            imgPath: "img/cegadora_ondulada.jpg",
                            descripcion: "La Opuntia microdasys undulata es un cactus de crecimiento cespitoso, que forma grupos densos de tallos. Los tallos son planos, de color verde claro a verde oscuro, y pueden alcanzar hasta 20 cm de diámetro. Las espinas son pequeñas, de color blanco o amarillo, y se encuentran agrupadas en gloquidios, que son pelos con espinas muy finas que pueden causar irritación en la piel. Las flores son de color amarillo, y se producen en la primavera.\n La Opuntia microdasys undulata se utiliza como planta ornamental. También se utiliza en la medicina tradicional mexicana para tratar una variedad de afecciones, como la fiebre, la disentería y la diarrea.",
                          )),

                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Nopal_monstruoso.jpg",
              commonName: "Nopal\nmonstruoso",
              scientificName: "(Opuntia\nmonacantha)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Nopal monstruoso variegata (Opuntia monacantha)",                           
                            imgPath: "img/Nopal_monstruoso.jpg",
                            descripcion: "A diferencia de otras opuntias, esta tiene las pencas más alargadas y están veteadas en blanco.\nSe considera monstruosa por el crecimiento aleatorio y libre de sus tallos.\nCrecimiento relativamente rápido formando un arbusto de unos 50 cm o más.\nNo es exigente con el sustrato aunque agradece que tenga un buen drenaje.\nEl cultivo es muy sencillo si se tiene cuidado de no se encharque.\nPuede exponerse al sol si evitamos los rayos más fuertes, si se cultiva en sombra ésta tiene que ser muy luminosa. Es sensible a las heladas",
                          )),

                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Maguey_Amarillo.jpg",
              commonName: "Maguey Amarillo",
              scientificName: "(Agave americana)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Maguey Amarillo (Agave americana)",
                            imgPath: "img/Maguey_Amarillo.jpg",
                            descripcion: "Es una planta perenne acaule resistente a terrenos áridos. Las hojas suculentas son grandes (1-2 m por 15-25 cm), lanceoladas, de color blanco-azulado, blanco-grisáceo, verde o variegadas. Se disponen en espiral alrededor del centro donde permanecen enrolladas a un corto tallo central (denominado en México cayote5). Poseen espinas a lo largo de los bordes, que pueden ser ondulados o dentados, de casi 2 cm. Una espina apical de unos 5 cm de longitud y de hasta 1 cm de ancho en la base. \n Florece una sola vez hacia el final de su ciclo vegetativo, fenómeno conocido como monocarpismo, produciendo una inflorescencia terminal de unos ocho o diez metros de altura y una anchura superior a los 10 cm de diámetro. Desde más de la mitad de su longitud van saliendo pequeñas ramas en forma de panícula abierta, terminando cada una en un grupo de flores bisexuales de color amarillo-verdoso. Cada flor tiene un tamaño de unos 5 a 10 cm, y son polinizadas habitualmente por murciélagos. El fruto es una cápsula trígona y alargada. A lo largo de su vida emite gran número de hijuelos o retoños de raíz.",
                          )),


                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomListItem(
              imagePath: "img/Cardon.jpg",
              commonName: "Cardón",
              scientificName: "(Pachycereus\nPecten-Aboriginum)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Planta(
                            titulo: "Cardón (Pachycereus Pecten-Aboriginum)",
                            imgPath: "img/Cardon.jpg",
                            descripcion: "Planta arbórea, columnar, de 8 m de alto, con brazos primarios, bien definidos, y subbrazos de 2 m de largo. Tallo verde intenso, erecto, acanalado. De 10-12 costillas, generalmente redondeadas. De 1-3 espinas centrales, grisáceas con la punta oscura, de 1-3 cm de largo; espinas radiales de 8-9, grisáceas, de 1 cm de largo. Tiene una seudocefalia en la punta de los tallos, cubierta de una lana rojo amarronada y cerdas de 6 cm de largo. Flores blancas, abren de día, de 7-9 cm de largo; los pericarpelos y tubo floral densamente cubiertos con suaves pelos amarronados. Fruto seco, de 6-7,5 cm de diámetro, completamente cubierto de lana amarilla y cerdas. \n Pachycereus pecten-aboriginum es una planta diploide. Su biología floral difiere a través de su área de distribución. En Tehuacán, es polinizada en la noche por murciélagos que se alimentan de su néctar. En el desierto de Sonora, las flores permanecen abiertas más tiempo en el día para atraer tanto a los polinizadores nocturnos como a los diurnos",
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
