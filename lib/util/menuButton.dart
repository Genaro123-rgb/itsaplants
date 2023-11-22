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
        borderRadius: BorderRadius.circular(15.0), // Ajusta el radio aquí
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15.0), // Asegúrate de que el InkWell también tenga bordes redondeados
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 175, 152, 143),
            borderRadius: BorderRadius.circular(15.0), // Bordes redondeados para el contenedor
          ),
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50.0),
              SizedBox(height: 8),
              Text(
                title,
                style: GoogleFonts.orelegaOne(
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}