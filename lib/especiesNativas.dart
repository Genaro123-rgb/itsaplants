import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itsaplant/lista.dart';
import 'package:itsaplant/planta1.dart';
import 'package:itsaplant/planta2.dart';
import 'package:itsaplant/planta3.dart';

void main() {
  runApp(MaterialApp(
    home: EspeciesNativas(),
  ));
}

class EspeciesNativas extends StatefulWidget {
  const EspeciesNativas({Key? key}) : super(key: key);

  @override
  State<EspeciesNativas> createState() => _EspeciesNativasState();
}

class _EspeciesNativasState extends State<EspeciesNativas> {
  ScanResult? scanResult;

  final Map<String, Widget> plantScreens = {
    'Planta1': Planta1(),
    'Planta2': Planta2(),
    'Planta3': Planta3(),
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
