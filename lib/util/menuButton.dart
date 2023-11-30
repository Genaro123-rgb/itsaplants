import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4.0, // Añade un sombreado al Card
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 181, 176, 176),
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50.0),
              SizedBox(height: 8),
              Center( // Centrar el texto horizontalmente y verticalmente
                child: Text(
                  title,
                  style: GoogleFonts.orelegaOne(
                    textStyle: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  textAlign: TextAlign.center, // Asegura la alineación del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


