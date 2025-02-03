import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}

// Lista global de famosos
final List<String> famososOriginal = [
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
  "19. Freddie Mercury",
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
  "34. Bad Bunny",
  "35. Eminem",
  "36. Ariana Grande",
  "37. Rafa Nadal",
  "38. Ceciarmy",
  "39. The Grefg",
  "40. Pablo Iglesias",
  "41. Lebron James",
  "42. Stephen Hawking",
  "43. Dani Martín",
  "44. Brad Pitt",
  "45. Adolf Hitler",
  "46. IlloJuan",
  "47. Pablo Motos",
  "48. Tommy Shelby",
  "49. Anuel AA",
  "50. Andrés Iniesta",
  "51. Will Smith",
  "52. Dwayne 'The Rock' Johnson",
  "53. Robert Downey Jr.",
  "54. Margot Robbie",
  "55. J.K. Rowling",
  "56. Martin Scorsese",
  "57. Rosalía",
  "58. Gerard Piqué",
  "59. Mark Zuckerberg",
  "60. Emma Watson",
  "61. Shakira",
  "62. Neymar Jr.",
  "63. Bruce Lee",
  "64. Antonio Banderas",
  "65. Iker Casillas",
  "66. Conor McGregor",
  "67. Albert Einstein",
  "68. Dua Lipa",
  "69. Miguel de Cervantes",
  "70. Nicki Minaj",
  "71. Santiago Segura",
  "72. David Beckham",
  "73. Snoop Dogg",
  "74. Billie Eilish",
  "75. Jennifer Aniston",
  "76. Maluma",
  "77. Ed Sheeran",
  "78. Travis Scott",
  "79. Isabel Pantoja",
  "80. Ibai Llanos",
  "81. C. Tangana",
  "82. Charles Darwin",
  "83. Maradona",
  "84. Ricky Martin",
  "85. Mahatma Gandhi",
  "86. Maria Sharapova",
  "87. Cristiano Ronaldo Jr.",
  "88. Haaland",
  "89. Zac Efron",
  "90. Steven Spielberg",
  "91. The Weeknd",
  "92. Fernando Alonso",
  "93. Penélope Cruz",
  "94. Napoleón Bonaparte",
  "95. Sergio Ramos",
  "96. DjMariio",
  "97. Frank Sinatra",
  "98. Dalai Lama",
  "99. Vito Quiles",
  "100. Jorge Lorenzo"
];


final List<String> ciudadesOriginal = [
  "1. Madrid",
  "2. Barcelona",
  "3. Tokio",
  "4. Nueva York",
  "5. Londres",
  "6. París",
  "7. Roma",
  "8. Buenos Aires",
  "9. Chicago",
  "10. Ámsterdam",
  "11. Berlín",
  "12. Dubai",
  "13. Bangkok",
  "14. Seúl",
  "15. Ciudad de México",
  "16. Moscú",
  "17. Lisboa",
  "18. Hong Kong",
  "19. Sydney",
  "20. Mumbai",
  "21. Toronto",
  "22. Río de Janeiro",
  "23. Santiago de Chile",
  "24. Estambul",
  "25. Valladolid",
  "26. Shanghái",
  "27. Miami",
  "28. Melbourne",
  "29. Cádiz",
  "30. Gayanes",
  "31. Los Ángeles",
  "32. Pontevedra",
  "33. Huelva",
  "34. Kuala Lumpur",
  "35. Singapur",
  "36. Murcia",
  "37. Johannesburgo",
  "38. Zurich",
  "39. Cocentaina",
  "40. Praga",
  "41. Cairo",
  "42. Gijón",
  "43. Tel Aviv",
  "44. Ciudad de Guatemala",
  "45. Lima",
  "46. Quito",
  "47. Bogotá",
  "48. Caracas",
  "49. San Francisco",
  "50. Dallas",
  "51. Abu Dhabi",
  "52. Jakarta",
  "53. Washington D.C.",
  "54. Santiago",
  "55. Fukuoka",
  "56. Milán",
  "57. Oslo",
  "58. Granada",
  "59. Viena",
  "60. Cape Town",
  "61. Nairobi",
  "62. Dublín",
  "63. Edimburgo",
  "64. San Petersburgo",
  "65. Albacete",
  "66. Budapest",
  "67. Málaga",
  "68. Fuenlabrada",
  "69. Vigo",
  "70. Salamanca",
  "71. Houston",
  "72. Osaka",
  "73. Casablanca",
  "74. Tarragona",
  "75. Marrakech",
  "76. Montevideo",
  "77. Nueva Delhi",
  "78. Honolulu",
  "79. Zaragoza",
  "80. Vancouver",
  "81. Ciudad del Cabo",
  "82. Las Vegas",
  "83. Bordeaux",
  "84. Hamburgo",
  "85. Múnich",
  "86. Pristina",
  "87. Edmonton",
  "88. Montreal",
  "89. Copenhague",
  "90. Reykjavik",
  "91. Atenas",
  "92. Zagreb",
  "93. Dubrovnik",
  "94. Paiporta",
  "95. Valencia",
  "96. Bilbao",
  "97. Santos",
  "98. Bruselas",
  "99. Auckland",
  "100. Perth"
];




// Lista modificable (inicialmente una copia de `famososOriginal`)
List<String> famosos = List.from(famososOriginal);
List<String> ciudades = List.from(ciudadesOriginal);

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

      // Limitar el número de caracteres a 2
      if (inputNumber.length > 2) {
        inputNumber = inputNumber.substring(inputNumber.length - 2);
      }

      // Restablecer la lista de famosos antes de aplicar cambios
      resetFamosos();
      int index = int.parse(inputNumber) - 1;
      if (index >= 0 && index < famosos.length && index < ciudadesOriginal.length) {
  famosos[index] = "$inputNumber. Michael Jackson"; // Cambiar a la predicción
  ciudades[index] = "$inputNumber. Sevilla"; // Cambiar a la predicción
}

    });

    print("Número actual: $inputNumber");
    print("Lista actualizada: $famosos");
  }

  // Función para restablecer la lista de famosos a su estado original
  void resetFamosos() {
    famosos = List.from(famososOriginal);
    ciudades = List.from(ciudadesOriginal);
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
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
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



class PressableTileWrapper extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final Color normalColor;
  final Color pressedColor;
  final Duration animationDuration;

  const PressableTileWrapper({
    Key? key,
    required this.child,
    required this.onTap,
    this.normalColor = CupertinoColors.darkBackgroundGray,
    this.pressedColor = const Color(0xFF3A3A3C), // Color de pulsado
    this.animationDuration = const Duration(milliseconds: 100),
  }) : super(key: key);

  @override
  _PressableTileWrapperState createState() => _PressableTileWrapperState();
}

class _PressableTileWrapperState extends State<PressableTileWrapper> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapCancel: () => setState(() => _isPressed = false),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onTap();
      },
      child: AnimatedContainer(
        duration: widget.animationDuration,
        color: _isPressed ? widget.pressedColor : widget.normalColor,
        child: widget.child,
      ),
    );
  }
}

class NotasMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double topImageHeight = 215.0;
    const double bottomImageHeight = 115.0;

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: topImageHeight,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/top_notas2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  color: CupertinoColors.black,
                  child: SafeArea(
                    child: Column(
                      children: [
                        Expanded(
                          child: CupertinoListSection.insetGrouped(
                            backgroundColor: CupertinoColors.black,
                            children: [
                              PressableTileWrapper(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => ListaFamososScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: CupertinoColors.darkBackgroundGray,
                                        width: 0.5, // Línea de separación más fina
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: CupertinoListTile(
                                    backgroundColor: CupertinoColors.transparent,
                                    title: Text(
                                      'Lista de famosos',
                                      style: TextStyle(color: CupertinoColors.white),
                                    ),
                                    subtitle: Text(
                                      '24/1/25   1. Jim Carrey',
                                      style: TextStyle(color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                ),
                              ),
                              PressableTileWrapper(
                                onTap: () {
                                  // Acción para la lista de ciudades
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => ListaCiudadesScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: CupertinoColors.systemGrey,
                                        width: 0.01, // Línea de separación más fina
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: CupertinoListTile(
                                    backgroundColor: CupertinoColors.transparent,
                                    title: Text(
                                      'Lista de ciudades',
                                      style: TextStyle(color: CupertinoColors.white),
                                    ),
                                    subtitle: Text(
                                      '24/1/25   1. Bilbao',
                                      style: TextStyle(color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: bottomImageHeight,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/bottom_notas2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                color: CupertinoColors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ListaFamososScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
              Positioned(
                bottom: -40, // Pegada abajo del todo
                left: 0,
                right: 0,
                child: Image.asset(
                'assets/images/bottom_notas.jpeg',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 81.8, // Ajustar altura según diseño
                )
              ),
            ],
          ),
          // Botón de regreso invisible
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Vuelve a NotasMenuScreen
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.transparent, // Invisible
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListaCiudadesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
                    itemCount: ciudades.length + 1, // +1 para incluir el título
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        // Título al inicio
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: Text(
                            'Lista de ciudades',
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
                          ciudades[index -1], // -1 para ajustar el índice
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
              Positioned(
                bottom: -40, // Pegada abajo del todo
                left: 0,
                right: 0,
                child: Image.asset(
                'assets/images/bottom_notas.jpeg',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 81.8, // Ajustar altura según diseño
                )
              ),
            ],
          ),
          // Botón de regreso invisible
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Vuelve a NotasMenuScreen
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.transparent, // Invisible
              ),
            ),
          ),
        ],
      ),
    );
  }
}