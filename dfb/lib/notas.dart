import 'package:flutter/material.dart';

class NotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo ajustada
          Center(
            child: Image.asset(
              'assets/images/notas_menu.jpeg', // Ruta de la imagen proporcionada
              fit: BoxFit.fitHeight, // Ajusta al alto manteniendo proporción
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center, // Centra la imagen
            ),
          ),
          // Botón de regreso
          Positioned(
            top: 40, // Ajusta según tu diseño
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Vuelve a la pantalla anterior
              },
            ),
          ),
        ],
      ),
    );
  }
}
