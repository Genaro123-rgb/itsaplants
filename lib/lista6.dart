import 'package:flutter/material.dart';
import 'package:itsaplant/planta17.dart';
import 'package:itsaplant/planta18.dart';
import 'package:itsaplant/planta19.dart';

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
        title: 'Helianthus annuus “girasol silvestre”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta17()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Helianthus annuus, var. “girasol silvestre”',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta18()));
        },
      ),
      CustomListItem(
        imagePath: 'img/foto1.png',
        title: 'Gossypium. “Algodón”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta19()));
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
