import 'package:flutter/material.dart';

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas'),
        backgroundColor: Colors.yellow[700], // Color similar al de iOS
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Volver al fondo principal
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text(
              'Lista de famosos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Haz clic para ver más detalles.'),
            onTap: () {
              // Aquí se puede agregar funcionalidad más adelante
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Tareas pendientes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Haz clic para ver más detalles.'),
            onTap: () {
              // Aquí se puede agregar funcionalidad más adelante
            },
          ),
        ],
      ),
    );
  }
}
