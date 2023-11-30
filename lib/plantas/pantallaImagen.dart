import 'package:flutter/material.dart';

class PantallaImagen extends StatelessWidget {
  final String imgPath;

  PantallaImagen({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imagen Completa')),
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Image.asset(imgPath),
        ),
      ),
    );
  }
}

