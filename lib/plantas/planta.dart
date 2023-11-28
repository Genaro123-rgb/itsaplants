import 'package:flutter/material.dart';

class Planta extends StatelessWidget {
  final String titulo;
  final String imgPath;
  final String descripcion;

  Planta({super.key, required this.titulo, required this.imgPath, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(titulo, style: TextStyle(color: const Color.fromARGB(255, 231, 21, 21), fontWeight: FontWeight.bold),), 
            pinned: true,
            floating: true,
            expandedHeight: 200,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: _plantaImagen(), // Llama al método aquí
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              _seccionTexto(), // Llama al método aquí
            ],
          ))
        ],
      ),
    );
  }

  Widget _plantaImagen() { // Método para el widget de imagen
    return Container(
      child: Image.asset(
        imgPath, // Usa la variable de instancia imgPath
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _seccionTexto() { // Método para el widget de texto
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        descripcion, // Usa la variable de instancia descripcion
        softWrap: true,
      ),
    );
  }
}
