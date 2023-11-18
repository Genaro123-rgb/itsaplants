import 'package:flutter/material.dart';
import 'package:itsaplant/planta20.dart';
import 'package:itsaplant/planta21.dart';
import 'package:itsaplant/planta22.dart';
import 'package:itsaplant/planta23.dart';

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
        title: 'Yucca Elephantipes. “Yuca”. México.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta20()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Echinopsis subdenudata. “Cactus de Lily”. Bolivia y Paraguay.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta21()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Kalanchoe daigremontiana. “Planta Lagarto”. Madagascar.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta22()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Lagerstroemia indica. “Crespón”. India-China',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta23()));
        },
      ), // Agrega más elementos de lista según sea necesario
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
