import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesMenuScreen_(),
    );
  }
}

class NotesMenuScreen_ extends StatelessWidget {
  void navigateToListScreen(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ListScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Imagen fija superior
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'assets/images/top_nota.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              // Espacio para la lista
              Expanded(
                child: GestureDetector(
                  onTap: () => navigateToListScreen(context),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
              // Imagen fija inferior
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'assets/images/bottom_nota.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => navigateToListScreen(context),
              child: Text("Ir a la lista"),
            ),
          )
        ],
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  final List<String> items = List.generate(
    26,
    (index) => "${index + 1}. Famoso ${index + 1}",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Imagen fija superior
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'assets/images/top_nota.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              // Lista scrollable
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        items[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Imagen fija inferior
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'assets/images/bottom_nota.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
