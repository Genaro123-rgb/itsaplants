import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            title: Text(titulo, style: GoogleFonts.orelegaOne(textStyle: TextStyle(fontSize: 40, color: Colors.white))), 
            pinned: true,
            iconTheme: IconThemeData(color: Colors.white),
            floating: true,
            expandedHeight: 200,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: <Widget> [
              _plantaImagen(), // Llama al método aquí
              const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment(0.0, 0.1),
                  colors: <Color>[
                    Color(0x60000000),
                    Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
        style: GoogleFonts.orelegaOne(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    );
  }
}
