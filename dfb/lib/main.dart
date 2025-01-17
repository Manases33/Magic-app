import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final totalHeight = constraints.maxHeight;

          // Ajustar proporciones dinámicamente
          final topHeight = totalHeight * 0.0563; // 5.63%
          final appsHeight = totalHeight * 0.7254; // 72.54%
          final bottomHeight = totalHeight - topHeight - appsHeight; // Ajusta el restante

          return Column(
            children: [
              // Barra superior
              Container(
                width: double.infinity,
                height: topHeight,
                child: Image.asset(
                  'assets/images/top.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
              // Apps (PageView)
              Container(
                height: appsHeight,
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/images/fondo.jpeg',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/fondo2.jpeg',
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/fondo3.jpeg',
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        // Botón en la app de notas
                        Positioned(
                          top: 312 - 130, // Ajusta según tu imagen
                          left: 93.5 - 60, // Ajusta según tu imagen
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("¡Botón de Notas pulsado!"),
                                ),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.5), // Fondo visible
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Notas",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Dock inferior
              Container(
                width: double.infinity,
                height: bottomHeight,
                child: Image.asset(
                  'assets/images/bottom.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
