import 'package:flutter/material.dart';

class Planta6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Detalle de la Planta'),
      ),*/
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: plantaImagen,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              SeccionTexto,
            ],
          ))
        ],
      ),
    );
  }
}

Widget plantaImagen = Container(
  child: Image.asset(
    'img/foto1.png',
    fit: BoxFit.cover,
  ),
);

Widget SeccionTexto = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'texto pues',
    softWrap: true,
  ),
);
