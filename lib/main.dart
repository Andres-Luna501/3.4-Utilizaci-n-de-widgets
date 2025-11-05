import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW Utilización de Widgets',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Eliminamos AppBar para usar pantalla completa con fondo
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fondo.jpg'), // tu imagen de fondo
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay semitransparente para mejorar la visibilidad del texto
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          // Contenido principal
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80), // espacio superior
                  // Mensaje de bienvenida
                  Text(
                    'Bienvenido a',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Nombre de la app
                  Text(
                    'LDSW Utilización de Widgets',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  // Texto "Hola Mundo"
                  Text(
                    'Hola Mundo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  // Row con colores
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(color: Colors.red, width: 50, height: 50),
                      Container(color: Colors.green, width: 50, height: 50),
                      Container(color: Colors.blue, width: 50, height: 50),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Stack con colores
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(width: 100, height: 100, color: Colors.orange),
                      Container(width: 60, height: 60, color: Colors.purple),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
