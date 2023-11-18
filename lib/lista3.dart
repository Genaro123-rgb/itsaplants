import 'package:flutter/material.dart';
import 'package:itsaplant/planta8.dart';
import 'package:itsaplant/planta9.dart';
import 'package:itsaplant/planta10.dart';

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
        title: 'Yucca Rostrata. “palmito”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta8()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Fouquieria splendens. “Ocotillo o albarda”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta9()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Euphorbia antisyphilitica. “Candelilla”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta10()));
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
