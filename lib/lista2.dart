import 'package:flutter/material.dart';
import 'package:itsaplant/planta5.dart';
import 'package:itsaplant/planta6.dart';
import 'package:itsaplant/planta7.dart';

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
        title: 'Hamatocactus setispinus. “viznaga ganchuda”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta5()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Echinocereus perbellus. “cactus arcoiris, huevo de toro”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta6()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Echinocereus enneacanthus. “Strawberry cactus”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta7()));
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
