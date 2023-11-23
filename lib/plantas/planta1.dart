import 'package:flutter/material.dart';

class Planta1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Detalle de la Planta'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: <Widget>[
          plantaImagen,
          Expanded(
            child: SingleChildScrollView(
              child: SeccionTexto,
            ),
          ),
        ],
      ),
    );
  }
}

Widget plantaImagen = Container(
  height: 150, // Altura fija para la imagen
  child: Image.asset(
    'img/mezquite.jpg',
    fit: BoxFit.fill,
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
