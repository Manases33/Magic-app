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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String inputNumber = ""; // Variable para almacenar el número seleccionado
  final List<Offset> buttonPositions = [
    Offset(300, 205), // Posición para 0
    Offset(110, 306), // Posición para 1
    Offset(205, 306), // Posición para 2
    Offset(300, 306), // Posición para 3
    Offset(110, 410), // Posición para 4
    Offset(205, 410), // Posición para 5
    Offset(300, 410), // Posición para 6
    Offset(110, 510), // Posición para 7
    Offset(205, 510), // Posición para 8
    Offset(300, 510), // Posición para 9
  ];
  final double buttonSize = 60; // Tamaño de los botones

void addNumber(String number) {
  setState(() {
    inputNumber += number;
    if (inputNumber.length > 2) {
      inputNumber = inputNumber.substring(inputNumber.length - 2);
    }
  });
  print("Número actual: $inputNumber");
}

  String? getTappedNumber(Offset position) {
    for (int i = 0; i < buttonPositions.length; i++) {
      final buttonRect = Rect.fromLTWH(
        buttonPositions[i].dx,
        buttonPositions[i].dy,
        buttonSize,
        buttonSize,
      );
      if (buttonRect.contains(position)) {
        return i.toString();
      }
    }
    return null; // Si no se toca ningún botón
  }

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
              // Apps (PageView con detección de eventos)
              Expanded(
                child: Listener(
                  onPointerDown: (event) {
                    final tappedNumber = getTappedNumber(event.localPosition);
                    if (tappedNumber != null) {
                      addNumber(tappedNumber);
                    }
                  },
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
                          Positioned(
                            top: 355 - 130, // Ajusta según tu imagen
                            left: 93.5 - 60, // Ajusta según tu imagen
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("¡Botón de Notas pulsado!"),
                                  ),
                                );
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
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
