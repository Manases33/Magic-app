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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NotasMenuScreen(),
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

class NotasMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo del menú de notas
          Image.asset(
            'assets/images/menu_notas.jpeg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          // Botón de regreso
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Botón para ver la lista de famosos
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListaFamososScreen()),
                );
              },
              child: Text('Ver lista de famosos'),
            ),
          ),
        ],
      ),
    );
  }
}

class ListaFamososScreen extends StatelessWidget {
  final List<String> famosos = [
    "1. Jim Carrey",
    "2. Al Pacino",
    "3. YoSoyPlex",
    "4. Adam Sandler",
    "5. Mario Casas",
    "6. Cristiano Ronaldo",
    "7. Mr Beast",
    "8. Julia Roberts",
    "9. Quentin Tarantino",
    "10. Úrsula Corberó",
    "11. Ester Expósito",
    "12. Michael Jordan",
    "13. Leo Messi",
    "14. Britney Spears",
    "15. Taylor Swift",
    "16. Steve Jobs",
    "17. Ilia Topuria",
    "18. Kanye West",
    "19. Tiger Woods",
    "20. Myke Tyson",
    "21. Beyoncé",
    "22. Leonardo DiCaprio",
    "23. Carlos Alcaraz",
    "24. Enrique Iglesias",
    "25. Primo de Rivera",
    "26. Donald Trump",
    "27. Vinicius Jr",
    "28. Elon Musk",
    "29. Justin Bieber",
    "30. Dandy de Barcelona",
    "31. Pep Guardiola",
    "32. Zendaya",
    "33. Vladimir Putin",
    "34. Keanu Reeves",
    "35. Avicii",
    "36. Ariana Grande",
    "37. Rafa Nadal",
    "38. Ceciarmy",
    "39. The Grefg",
    "40. Pablo Iglesias",
    "41. Lebron James",
    "42. Stephen Hawking",
    "43. Dani Martín",
    "44. Brad Pitt",
    "45. Alfred Hitchcock",
    "46. IlloJuan",
    "47. Pablo Motos",
    "48. Tommy Shelby",
    "49. Anuel AA",
    "50. Andrés Iniesta"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen superior fija
          Image.asset(
            'assets/images/top_notas.jpeg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: 100, // Ajustar altura según diseño
          ),
          // Lista con título al inicio
          Expanded(
            child: Container(
              color: Colors.black,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                itemCount: famosos.length + 1, // +1 para incluir el título
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // Título al inicio
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Text(
                        'Lista de famosos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24, // Tamaño ajustado para el título
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }
                  // Elementos de la lista
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 16.0), // Reducir espacio vertical
                    child: Text(
                      famosos[index - 1], // -1 para ajustar el índice
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16, // Tamaño de texto estándar
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Imagen inferior fija
          Image.asset(
            'assets/images/bottom_notas.jpeg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: 100, // Ajustar altura según diseño
          ),
        ],
      ),
    );
  }
}
