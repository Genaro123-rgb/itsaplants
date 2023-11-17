// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:itsaplant/cetaceasMunicipio.dart';
import 'package:itsaplant/especiesNativas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú Principal editado por arturo',
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          MenuButton(
            title: 'Especies Nativas',
            icon: Icons.home,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EspeciesNativas()), // Navega a EspeciesNativas
              );
            },
          ),
          MenuButton(
            title: 'Especies Nativas hola alemi',
            icon: Icons.home,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CetaceasMunicipio()), // Navega a EspeciesNativas
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuButton({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap, // Usa la función de callback aquí
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}