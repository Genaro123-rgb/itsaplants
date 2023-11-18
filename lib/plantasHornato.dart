import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/lista7.dart';
import 'package:itsaplant/planta20.dart';
import 'package:itsaplant/planta21.dart';
import 'package:itsaplant/planta22.dart';
import 'package:itsaplant/planta23.dart';

void main() {
  runApp(MaterialApp(
    home: PlantasHornato(),
  ));
}

class PlantasHornato extends StatefulWidget {
  const PlantasHornato({Key? key}) : super(key: key);

  @override
  State<PlantasHornato> createState() => _PlantasHornatoState();
}

class _PlantasHornatoState extends State<PlantasHornato> {
  ScanResult? scanResult;

  final Map<String, Widget> plantScreens = {
    'Planta20': Planta20(),
    'Planta21': Planta21(),
    'Planta22': Planta22(),
    'Planta23': Planta23(),
  };

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
      floatingActionButton: FloatingActionButton(
        onPressed: _scan,
        child: Icon(Icons.qr_code),
        backgroundColor: Colors.green,
      ),
    );
  }

  Future<void> _scan() async {
    try {
      final result = await BarcodeScanner.scan();
      setState(() {
        scanResult = result;
        if (plantScreens.containsKey(result.rawContent)) {
          final plantName = result.rawContent;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Dirigiendo a detalles de $plantName"),
              duration: Duration(seconds: 2),
            ),
          );

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => plantScreens[plantName]!));
        }
      });
    } on PlatformException catch (e) {
      setState(() {
        scanResult = ScanResult(
          type: ResultType.Error,
          rawContent: e.code == BarcodeScanner.cameraAccessDenied
              ? 'The user did not grant the camera permission!'
              : 'Unknown error: $e',
        );
      });
    }
  }
}
