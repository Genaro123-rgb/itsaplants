// Tus importaciones existentes
// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/categorias/arboles.dart';
import 'package:itsaplant/categorias/cactaceasDeserticas.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';
import 'package:itsaplant/categorias/cetaceasMunicipio.dart';
import 'package:itsaplant/categorias/especiesNativas.dart';
import 'package:itsaplant/categorias/especiesOrnato.dart';
import 'package:itsaplant/categorias/plantaSerrania.dart';
import 'package:itsaplant/categorias/plantasPropAves.dart';
import 'package:itsaplant/categorias/procuracionEspecies.dart';
import 'package:itsaplant/plantas/planta.dart';
import 'package:itsaplant/util/menuButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú Principal',
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 112, 97, 1),
      appBar: AppBar(
        title: Text(
          'ITSA Plants',
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
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10, // Espacio horizontal entre los botones
          mainAxisSpacing: 10, // Espacio vertical entre los botones
          childAspectRatio: 2 / 2, // Proporción del tamaño de los botones
          children: <Widget>[
            MenuButton(
              title: 'Especies Nativas',
              icon: Icons.nature,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => especiesNativas()),
                );
              },
            ),
            MenuButton(
              title: 'Cactáceas Municipales',
              icon: Icons.local_florist,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CactaceasMunicipio()),
                );
              },
            ),
            MenuButton(
              title: 'Serranías del Burro',
              icon: Icons.landscape,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => plantaSerrania()),
                );
              },
            ),
            MenuButton(
              title: 'Procura Nativa',
              icon: Icons.eco,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => procuracionEspecies()),
                );
              },
            ),
            MenuButton(
              title: 'Otras regiones',
              icon: Icons.public,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => cactaceasDeserticas()),
                );
              },
            ),
            MenuButton(
              title: 'Propagadas por Aves',
              icon: Icons.filter_vintage,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => plantasPropAves()),
                );
              },
            ),
            MenuButton(
              title: 'Especies de Ornato',
              icon: Icons.nature_people,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => especiesOrnato()),
                );
              },
            ),
            MenuButton(
              title: 'Árboles',
              icon: Icons.park,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => arboles()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _scanQR(context),
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(246, 59, 44, 3),
      ),
    );
  }

  Future<void> _scanQR(BuildContext context) async {
    try {
      final result = await BarcodeScanner.scan();
      String titulo;
      String imgPath;
      String descripcion;

      // Aquí decides a dónde ir según el resultado
      switch (result.rawContent) {
        case 'cedro rojo':
          titulo = "Cedro Rojo (Cedrela odorata)";
          imgPath = "img/cedro.jpg";
          descripcion =
              "El Cedro Rojo (Cedrela odorata) es un árbol majestuoso que destaca por su imponente altura, alcanzando entre 30 y 40 metros, con un tronco recto y cilíndrico que exhibe una corteza gris a marrón, marcada por fisuras longitudinales. \n Su frondoso follaje, compuesto por hojas alternas y dentadas, proporciona sombra densa en su entorno. Durante la primavera o el verano, el árbol se adorna con pequeñas flores perfumadas que se agrupan en panículas, seguidas por cápsulas leñosas que contienen numerosas semillas aladas.";
          break;

        case 'maguey blanco':
          titulo = "Maguey blanco (Agave americana)";
          imgPath = "img/Maguey_blanco.jpg";
          descripcion =
              "Planta que alcanza entre 2 y 2.5 m de altura, con hojas de color blanco grisáceo, fuertes dientes en el margen y espina terminal robusta.\n Hijuelos nacen en la base de plantas adultas. Inflorescencias (quiote) de 6-8 m de alto con flores verdes-amarillentas. Cultivada desde el nivel del mar hasta los 2,500 m de altitud.\n Encontrada en estado silvestre en Nuevo León y Tamaulipas, México ampliamente utilizada con fines ornamentales.";

          break;

        case 'cegadora':
          titulo = "cegadora ondulada (Opuntia microdasys undulata)";
          imgPath = "img/cegadora_ondulada.jpg";
          descripcion =
              "La Opuntia microdasys undulata es un cactus de crecimiento cespitoso, que forma grupos densos de tallos. Los tallos son planos, de color verde claro a verde oscuro, y pueden alcanzar hasta 20 cm de diámetro. Las espinas son pequeñas, de color blanco o amarillo, y se encuentran agrupadas en gloquidios, que son pelos con espinas muy finas que pueden causar irritación en la piel. Las flores son de color amarillo, y se producen en la primavera.\n La Opuntia microdasys undulata se utiliza como planta ornamental. También se utiliza en la medicina tradicional mexicana para tratar una variedad de afecciones, como la fiebre, la disentería y la diarrea.";

          break;

        case 'nopal monstruoso':
          titulo = "Nopal monstruoso variegata (Opuntia monacantha)";
          imgPath = "img/Nopal_monstruoso.jpg";
          descripcion =
              "A diferencia de otras opuntias, esta tiene las pencas más alargadas y están veteadas en blanco.\nSe considera monstruosa por el crecimiento aleatorio y libre de sus tallos.\nCrecimiento relativamente rápido formando un arbusto de unos 50 cm o más.\nNo es exigente con el sustrato aunque agradece que tenga un buen drenaje.\nEl cultivo es muy sencillo si se tiene cuidado de no se encharque.\nPuede exponerse al sol si evitamos los rayos más fuertes, si se cultiva en sombra ésta tiene que ser muy luminosa. Es sensible a las heladas";

          break;

        case 'maguey amarillo':
          titulo = "Maguey Amarillo (Agave americana)";
          imgPath = "img/Maguey_Amarillo.jpg";
          descripcion =
              "Es una planta perenne acaule resistente a terrenos áridos. Las hojas suculentas son grandes (1-2 m por 15-25 cm), lanceoladas, de color blanco-azulado, blanco-grisáceo, verde o variegadas. Se disponen en espiral alrededor del centro donde permanecen enrolladas a un corto tallo central (denominado en México cayote5). Poseen espinas a lo largo de los bordes, que pueden ser ondulados o dentados, de casi 2 cm. Una espina apical de unos 5 cm de longitud y de hasta 1 cm de ancho en la base. \n Florece una sola vez hacia el final de su ciclo vegetativo, fenómeno conocido como monocarpismo, produciendo una inflorescencia terminal de unos ocho o diez metros de altura y una anchura superior a los 10 cm de diámetro. Desde más de la mitad de su longitud van saliendo pequeñas ramas en forma de panícula abierta, terminando cada una en un grupo de flores bisexuales de color amarillo-verdoso. Cada flor tiene un tamaño de unos 5 a 10 cm, y son polinizadas habitualmente por murciélagos. El fruto es una cápsula trígona y alargada. A lo largo de su vida emite gran número de hijuelos o retoños de raíz.";

          break;

        case 'cardon':
          titulo = "Cardón (Pachycereus Pecten-Aboriginum)";
          imgPath = "img/Cardon.jpg";
          descripcion =
              "Planta arbórea, columnar, de 8 m de alto, con brazos primarios, bien definidos, y subbrazos de 2 m de largo. Tallo verde intenso, erecto, acanalado. De 10-12 costillas, generalmente redondeadas. De 1-3 espinas centrales, grisáceas con la punta oscura, de 1-3 cm de largo; espinas radiales de 8-9, grisáceas, de 1 cm de largo. Tiene una seudocefalia en la punta de los tallos, cubierta de una lana rojo amarronada y cerdas de 6 cm de largo. Flores blancas, abren de día, de 7-9 cm de largo; los pericarpelos y tubo floral densamente cubiertos con suaves pelos amarronados. Fruto seco, de 6-7,5 cm de diámetro, completamente cubierto de lana amarilla y cerdas. \n Pachycereus pecten-aboriginum es una planta diploide. Su biología floral difiere a través de su área de distribución. En Tehuacán, es polinizada en la noche por murciélagos que se alimentan de su néctar. En el desierto de Sonora, las flores permanecen abiertas más tiempo en el día para atraer tanto a los polinizadores nocturnos como a los diurnos";

          break;

        case 'viznaga':
          titulo = "Viznaga Ganchuda (Hamatocactus setispinus)";
          imgPath = "img/viznaga_ganchuda.png";
          descripcion =
              "Tallos globosos, que se van alargando, de color verde glauco o brillante. \n Costillas pronunciadas, espiraladas. Aréolas con glándulas nectaríferas. \n Espinas centrales flexibles, alargadas y ganchudas. En verano, en el ápice del tallo, brotan flores diurnas, perfumadas, autofértiles, infundibuliformes, de color amarillo o amarillo con el centro rojo. \n Las flores son polinizadas por abejas. Frutos esféricos u ovoides, anaranjados o verdes o rojos, carnosos e indehiscentes.\n Semillas negras, reticuladas o foveoladas.";

          break;

        case 'cactus arcoiris':
          titulo = "Cactus Arcoiris (Echinocereus perbellus)";
          imgPath = "img/cactus_arcoiris.png";
          descripcion =
              "Planta de tallo cilíndrico que puede alcanzar hasta 30 cm de altura por 10 cm de diámetro.\n Dicho tallo de color verde militar, está dividido en 20 o más costillas cargadas con areolas espaciadas 3 mm una de otra. \n Cada areola posee de 20 a 25 espinas radiales color crema con las puntas café claro. Además, cada areola tiene de 3 a 5 espinas centrales de color café oscuro de 1 cm de largo.  \n  Sus flores son amarillas en su interior, raras veces coloreadas de rosa pálido o morado claro. \n Pueden alcanzar un diámetro hasta de 10 cm por 5 cm de largo. Sus frutos son globosos, de más de 4 cm de diámetro, de color rojo ocre y están cubiertos de finas espinas.\n Cada fruto contiene decenas de semillas negras, menores a 1 mm de diámetro.";

          break;

        case 'strawberry cactus':
          titulo = "Strawberry cactus (Echinocereus enneacanthus)";
          imgPath = "img/Strawberry_cactus.jpg";
          descripcion =
              "También conocido como strawberry cactus, es una especie de cactus perteneciente a la familia Cactaceae. Es endémica de México, donde se encuentra en los estados de Sonora, Chihuahua, Coahuila, Nuevo León y Tamaulipas. \n El Echinocereus enneacanthus es un cactus de crecimiento cespitoso, que forma grupos densos de tallos. Los tallos son cilíndricos, de color verde claro a verde oscuro, y pueden alcanzar hasta 50 cm de altura. Las espinas son radiales y centrales, y pueden ser de color blanco, amarillo o rojo. Las flores son de color rosa o rojo, y se producen en la primavera.\n El Echinocereus enneacanthus no se encuentra amenazada a nivel global. Sin embargo, en algunas regiones, se considera una especie vulnerable, debido a la recolección excesiva para el comercio de plantas ornamentales.";

          break;

        case 'cenizo':
          titulo = "Cenizo (Leucophyllum frutescens)";
          imgPath = "img/cenizo.jpeg";
          descripcion =
              "Es un arbusto siempreverde del género Leucophyllum en la familia Scrophulariaceae;es nativo del norte de México y del sudoeste de los Estados Unidos.\n Las flores tienen forma de campana o embudo, con cinco lóbulos y dos labios. Estos arbustos se encuentran en suelos arenosos y tienen una gran tolerancia a la sal. \n Se han hecho populares como plantas de ornato limitadoras o centrales en plantaciones cálidas y secas, pues ellas tienen bajos requerimientos de agua y se les puede dar forma de setos, además de que florecen sobre toda su superficie. ";

          break;

        case 'mezquite':
          titulo = "Mezquite (Prosopis laevigata)";
          imgPath = "img/mezquite.jpg";
          descripcion =
              "El mezquite blando, mezquite blanco o algarrobo (Prosopis laevigata) es una especie del género Prosopis o mezquite de la familia Fabaceae.\n Es un árbol de hasta 13 metros de altura, de hojas compuestas pequeñas con flores de color crema-amarillento.\n Se desarrolla en regiones áridas y semiáridas de México, desde Baja California sur y Sonora en México, hasta Bolivia, Perú, y noroeste de Argentina.\n Es muy importante ya que su madera es usada como combustible, para construcción de cercas, sus vainas como forraje y como alimento para el hombre; produce resina que tiene uso en la fabricación de pegamentos y barnices, mientras que sus flores son importantes para la producción de miel.\n Esta especie de mezquite se destaca por su papel ecológico muy importante ya que es un excelente fijador del suelo y por lo tanto, controlador de la erosión; es fijador de nitrógeno, lo cual mejora la fertilidad del suelo.";
          break;

        case 'retama':
          titulo = "Retama o mezquite Amarillo (Retama sphaerocarpa)";
          imgPath = "img/mezquite.png";
          descripcion =
              "La Retama sphaerocarpa, también conocida como retama amarilla o mezquite amarillo, es un arbusto perteneciente a la familia Fabaceae. Es originaria del Norte de África y de la península ibérica. Muy frecuente en casi toda la Península, excepto en los Pirineos, Cornisa Cantábrica, Galicia y buena parte de Portugal.\nLa Retama sphaerocarpa es un arbusto que puede alcanzar los 3 metros de altura. Generalmente desprovisto de hojas, es grisáceo y muy ramificado. Las ramas son delgadas y flexibles, de color verde grisáceo, más plateado a finales de primavera. Las flores son amarillas, muy vistosas, dispuestas en racimos axilares. El fruto es una legumbre, de color marrón, con semillas pequeñas. \n La Retama sphaerocarpa tiene una serie de usos, entre los que se incluyen:\nOrnamental: Es un arbusto muy decorativo, con flores amarillas muy vistosas. Se utiliza como planta ornamental en jardines y parques.\nMedicinal: La corteza y las hojas se utilizan en la medicina tradicional para tratar una variedad de afecciones, como la fiebre, la disentería y la diarrea.\nForraje: Las hojas y los frutos se utilizan como forraje para el ganado.";

          break;

        case 'huizache':
          titulo = "Retama o mezquite Amarillo (Retama sphaerocarpa.)";
          imgPath = "img/hizache.jpg";
          descripcion =
              "La Retama sphaerocarpa, también conocida como retama amarilla o mezquite amarillo, es un arbusto perteneciente a la familia Fabaceae. Es originaria del Norte de África y de la península ibérica. Muy frecuente en casi toda la Península, excepto en los Pirineos, Cornisa Cantábrica, Galicia y buena parte de Portugal.\nLa Retama sphaerocarpa es un arbusto que puede alcanzar los 3 metros de altura. Generalmente desprovisto de hojas, es grisáceo y muy ramificado. Las ramas son delgadas y flexibles, de color verde grisáceo, más plateado a finales de primavera. Las flores son amarillas, muy vistosas, dispuestas en racimos axilares. El fruto es una legumbre, de color marrón, con semillas pequeñas. \n La Retama sphaerocarpa tiene una serie de usos, entre los que se incluyen:\nOrnamental: Es un arbusto muy decorativo, con flores amarillas muy vistosas. Se utiliza como planta ornamental en jardines y parques.\nMedicinal: La corteza y las hojas se utilizan en la medicina tradicional para tratar una variedad de afecciones, como la fiebre, la disentería y la diarrea.\nForraje: Las hojas y los frutos se utilizan como forraje para el ganado.";
          break;

        case 'yuca':
          titulo = "Yuca (Yucca Elephantipes)";
          imgPath = "img/Yuca.jpg";
          descripcion =
              "Plantas de hasta 8 m de alto. Tallo desnudo en toda su extensión, excepto en el ápice.\n Hojas hasta de 60 cm de largo, 5 a 8 cm de ancho, coriáceas, ápice puntiagudo, márgenes serrados y con frecuencia fibrilosos, nacen en rosetas en el ápice del tallo o ramas.\n Inflorescencias paniculadas, erectas o colgantes, 1 a 2 m de largo, que generalmente se traslapan con las hojas.\n Flores en forma de copa, 4 cm de largo, con textura como cera, blancas o color crema, se abren en la noche, fragantes, suculentas.\n Perianto de 6 tépalos, libres o fusionados en la base; estambres 6, hipóginos; ovario sésil, 3-lóculos, con estilo grueso y 3-lobado en el ápice. Frutos cápsulas, en ocasiones algo carnosos, oblongo-ovoides. ";
          break;

        case 'cactus lily':
          titulo = "Cactus Lily (Echinopsis subdenudata)";
          imgPath = "img/Cactus_de_Lily.jpg";
          descripcion =
              "Echinopsis subdenudata es una especie de plantas de la familia Cactaceae, endémica de Tarija en Bolivia y Paraguay. Su cultivo se ha extendido por todo el mundo.\ Cactus de forma globular, puede crecer solitario o emitir hijuelos casi a nivel de la base hasta formar una colonia compacta. Tiene de 8 a 12 costillas muy prominentes con areolas lanosas donde se ocultan de 3 a 7 espinas radiales y 1 central muy pequeñas (1,5 - 2 mm), en ocasiones ausentes. \n Flores tubulares de 15 a 22 cm de largo, fragantes de color blanco o rosa claro. Duran un solo día. Los ejemplares adultos son muy floríferos. La floración se extiende desde la primavera hasta finales del Verano.";
          break;

        case 'planta lagarto':
          titulo = "Planta Lagarto (Kalanchoe daigremontiana)";
          imgPath = "img/Planta_lagarto.jpg";
          descripcion =
              "Esta planta tiene la característica inusual de producir brotes de nuevas plántulas a lo largo del margen de sus hojas, que se desprenden y emiten raíces fácilmente al caer al suelo.\n  De tallo erecto, puede alcanzar hasta 1 m de altura; hojas opuestas, carnosas, oblongo-lanceoladas que pueden llegar a los 15–20 cm de largo y unos 4-5 cm de ancho. Son de color verde medio por el haz y con manchas púrpura en el envés. Los márgenes en forma de cuchara poseen unos pequeños espolones bulbíferos de donde surgen los brotes de las nuevas plantas. \n Las plantas adultas también pueden desarrollar raíces laterales en las estructuras de su tallo principal, alcanzando los 10–15 cm del suelo. Las hojas tienden a desarrollarse en la parte alta del tallo, que alcanza así gran peso; esto provoca que el tallo principal se doble hacia abajo y emita raíces laterales, produciendo finalmente, el desarrollo de nuevos tallos primarios que se establecerán como plantas independientes.";
          break;

        case 'crespon':
          titulo = "Crespón (Lagerstroemia indica)";
          imgPath = "img/crespon.jpg";
          descripcion =
              "Se trata de una planta que soporta las bajas temperaturas, aunque el frío puede impedir su floración, por lo que se recomienda su cultivo en regiones donde haya veranos calurosos e inviernos suaves.\nEsta especie es muy utilizada para decorar jardines grandes y pequeños, balcones y terrazas, a los que aporta un toque de color que se extiende a lo largo de todo el año, ya que en primavera sus hojas se muestran rojizas y luego se tornan verdes, para luego volver al tono rojo durante otoño e invierno.";
          break;

        case 'fresno':
          titulo = "Fresno (Fraxinus excelsior)";
          imgPath = "img/Fresno.jpg";
          descripcion =
              "El fresno común es un árbol caducifolio que puede alcanzar alturas de 20 a 40 metros. \n Tiene un tronco recto y una copa redondeada. Las hojas son opuestas, compuestas y pinnadas, generalmente con 7 a 13 folíolos lanceolados y serrados en los bordes. \n En primavera, antes de que aparezcan las hojas, el árbol produce racimos de flores pequeñas y verde pálido. Las semillas se encuentran en samaras aladas que caen en otoño. \n Esta especie de fresno es apreciada por su madera resistente y elástica, que se utiliza en la fabricación de muebles, herramientas y otros productos. \n Además, los fresnos son importantes para el ecosistema, proporcionando alimento y hábitat para diversas especies de vida silvestre.";
          break;

        case 'ocotillo':
          titulo = "Ocotillo (Fouquieria Splendins)";
          imgPath = "img/Ocotillo_o_albarda.jpg";
          descripcion =
              "Es una planta dentro del género Fouquieria de la familia Fouquieriaceae. Tiene apariencia de un arbusto formado de palos erectos secos de color grisáceo. En la temporada de lluvias tiene hojas pequeñas y ovaladas. En México se distribuye desde la parte central del norte hasta el bajío. Habita en lugares con presencia de matorrales. Principalmente se utiliza para delimitar las fronteras de los terrenos.\n Durante la mayor parte del año, la planta parece ser un conjunto de grandes palillos muertos, los tallos de la planta están parcialmente verdes. Con las precipitaciones de las escasas lluvias, la planta se llega a cubrir rápidamente con un gran número de hojas ovales pequeñas (2 a 4 centímetros), que puede permanecer durante semanas o incluso meses.\n Los vástagos pueden alcanzar un diámetro de 5 centímetros en la base, y la planta puede alcanzar una altura de 10 m. La planta ramifica muy pesadamente en su base, pero sobre esta las ramas son como de poste y se dividen solamente más lejos de la base, y los especímenes en cultivos pueden no tener ninguna rama secundaria.\n Los ramilletes de hojas endurecen embutidos entre espinas dorsales, y las hojas nuevas brotan de la base de la espina dorsal.\n El rojo brillante de las flores aparece en la primavera y el verano, ocurriendo mientras que un grupo pequeño con forma de tubo en la extremidad del vástago.";
          break;

        case 'candelilla':
          titulo = "Candelilla (Euphorbia antisyphilitica)";
          imgPath = "img/Candelilla.jpgsp";
          descripcion =
              "Es un arbusto siempre verde, de hasta 90 cm de altura, la mayoría de los tallos sin hojas. Tiene los tallos densamente compactos, erectos. Se le llama también, en ocasiones, la planta de cera, pero este nombre se aplica también al género Hoya. El nombre común de la planta, “candelilla”, parece provenir de la forma particular de los tallos del arbusto largos, rectos, erectos y recubiertos de cera los cuales presentan la apariencia de pequeñas velas (“candelas”). Algunas otras versiones indican que la candelilla se quemaba directamente para iluminación, haciendo las funciones propias de una vela.\n La planta crece normalmente en zonas de clima semi-desértico, principalmente en laderas de suelo calcáreo, asociadas con formaciones de material rocoso. La raíz de la planta es relativamente pequeña. Una planta de tamaño moderado puede desarrollar más de 100 tallos de color verde grisáceo. \n La planta de candelilla se llena de pequeñas flores color rosa en la temporada de lluvias. Las formaciones de candelilla son más abundantes en elevaciones del orden de 800 m y se asocian comúnmente con plantas de lechuguilla, sotol, pasto chino, ocotillo y cactos diversos. La candelilla es muy resistente al ataque de plagas y enfermedades y es consumida de forma muy limitada por algunas especies de la fauna silvestre de la región.";
          break;

        case 'texas bluebonnet':
          titulo = "Texas Bluebonnet (Lupinus Texensis)";
          imgPath = "img/Texas_Bluebonnet.jpg";
          descripcion =
              "Herbácea anual de 15-45 cm de altura. Tallos ramificados con hojas palmadas de color verde claro, usualmente con cinco folíolos.\n Inflorescencias terminales, racemosas, con hasta 50 flores fragantes de color azul intenso o blanco.\n Fruto en forma de vaina plana con dos o más semillas.\n Florece en primavera, de marzo a mayo.\n Atrae a diversas especies de mariposas, polillas y es polinizada por abejas.";

          break;

        case 'girasol silvestre':
          titulo = "Girasol Silvestre (Helianthus annuus)";
          imgPath = "img/girasol_silvestre.jpg";
          descripcion =
              "Es una planta herbácea anual de la familia de las asteráceas originaria de Centro y Norteamérica y cultivada como alimenticia, oleaginosa y ornamental en todo el mundo.\nLos girasoles son plantas anuales (como lo indica su nombre específico latín: annuus) que pueden medir tres metros de alto. Los tallos son generalmente erectos e hispidos. La mayoría de las hojas son caulinares, alternas, pecioladas, con base cordiforme y bordes aserrados. La cara inferior es usualmente más o menos hispida, a veces glandulosa y la superior glabra.\nEl involucro es hemiesférico o anchado y mide 15-40 mm y hasta más de 20 cm. Las brácteas involúcrales llamadas filiaros se encuentran en número de 20-30, y hasta más de 100, ovaladas a lanceoladas —brutalmente estrechadas en el ápice— nerviadas longitudinalmente, con el borde generalmente hispido o hirsuto, al igual que sus caras exteriores, raramente son glabras. \n Receptáculo con escamas centimétricas tridentadas, con el diente mediano más grande y la punta hirsuta. \n Las lígulas, en número de 15-30, y hasta 100, de color amarillo a anaranjado hasta rojas, miden 2,5-5 cm; los flósculos, de 150 hasta 1000, del mismo color con los estambres pardos-rojizos. Los frutos son aquenios ovalados, algo truncados en la base, de 3-15 mm de largo, glabros o casi, estriados por finísimos surcos verticales, de color oscuro, generalmente casi negras —aunque pueden ser también blanquecinas, rojizas, de color miel o bien moteados o con bandas longitudinales más claras—. El vilano consiste en dos escamas lanceoladas de 2-3,5 mm acompañadas, o no, de hasta cuatro escamitas obtusas de 0,5-1 mm, todas tempranamente caedizas,4 (como lo indica su nombre específico latín: annuus).";

          break;

        case 'algodon':
          titulo = " Algodón (Gossypium)";
          imgPath = "img/algodon.jpg";
          descripcion =
              "Gossypium hirsutum, conocido como algodón de tierras altas o algodón mexicano, es la especie dominante en la producción de algodón, representando el 95% de la producción en los Estados Unidos y alrededor del 90% a nivel mundial. \nEste cultivo es altamente valorado ya que solo pierde el 10% de su peso durante el procesamiento.\nLas cápsulas de semillas del algodón se abren, y las fibras se secan enredándose idealmente para la fabricación de hilo. \nCada fibra está compuesta por 20 o 30 capas de celulosa enrolladas en resortes naturales, lo que confiere propiedades únicas de durabilidad, resistencia y  absorción al algodón. La fibra se utiliza para hacer hilados e hilaturas, que se tejen y tiñen para formar telas.\n Estas telas se cortan y cosen para crear una variedad de productos textiles, destacando su papel esencial en la industria textil.";
          break;

        // Añade más casos según tus necesidades
        default:
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('QR no reconocido')),
          );
          return; // Salir si no se reconoce el QR
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Planta(
              titulo: titulo, imgPath: imgPath, descripcion: descripcion),
        ),
      );
    } on PlatformException catch (e) {
      // ... Manejo de excepciones
    }
  }
}
