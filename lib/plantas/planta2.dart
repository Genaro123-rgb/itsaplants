import 'package:flutter/material.dart';

class Planta2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Detalle de la Planta'),
      ),*/
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: plantaImagen,
            ),
          ),
              const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, 0.5),
                  end: Alignment.center,
                  colors: <Color>[
                    Color(0x60000000),
                    Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SeccionTexto,
              ],
            )
          ),
        ],
      ),
    );
  }
}

Widget plantaImagen = Container(
  child: Image.asset(
    'img/hizache.jpg',
    fit: BoxFit.cover,
    ),
);

Widget SeccionTexto = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
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
    softWrap: true,
  ),
);