import 'package:flutter/material.dart';
import 'package:itsaplant/planta12.dart';
import 'package:itsaplant/planta13.dart';
import 'package:itsaplant/planta14.dart';
import 'package:itsaplant/planta15.dart';
import 'package:itsaplant/planta16.dart';

class CustomListItem {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  CustomListItem({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });
}

class ListaPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Crea una lista de elementos, cada uno con su propia navegación
    final List<CustomListItem> items = [
      CustomListItem(
        imagePath: 'img/foto1.png',
        title:
            'Agave americana. “Maguey blanco o maguey serrano o mezcal”. Nuevo León, México.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta12()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title:
            'Agave americana. “Maguey blanco o maguey serrano o mezcal”. Nuevo León, México.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta13()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title:
            'Agave americana. “Maguey blanco o maguey serrano o mezcal”. Nuevo León, México.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta14()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title:
            'Agave americana. “Maguey blanco o maguey serrano o mezcal”. Nuevo León, México.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta15()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title:
            ' Pachycereus Pecten-Aboriginum. “Cardón”. Baja California y Sinaloa, México.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta16()));
        },
      ),

      // Agrega más elementos de lista según sea necesario
    ];

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: item.onTap,
          child: Card(
            child: ListTile(
              leading: Image.asset(item.imagePath, width: 80, height: 80),
              title: Text(item.title),
            ),
          ),
        );
      },
    );
  }
}
