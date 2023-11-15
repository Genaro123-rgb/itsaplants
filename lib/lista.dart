// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/planta1.dart';
import 'package:itsaplant/planta2.dart';
import 'package:itsaplant/planta3.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ITSA Plants',
          style: GoogleFonts.orelegaOne(
            textStyle: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListaPlants(),
    );
  }
}

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
        imagePath: 'img/cenizo.jpeg',
        title: 'Leucophyllum frutescens. “Cenizo”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta1()));
        },
      ),
      CustomListItem(
        imagePath: 'img/hizache.jpg',
        title: 'Vachellia farnesiana. “Huizache”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta2()));
        },
      ),
      CustomListItem(
        imagePath: 'img/mezquite.jpg',
        title: 'Prosopis laevigata. “Mezquite”.',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Planta3()));
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
