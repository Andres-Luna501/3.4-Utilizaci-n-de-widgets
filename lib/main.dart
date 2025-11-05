import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW Utilización de Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Básicos'),
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hola Mundo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(color: Colors.red, width: 50, height: 50),
                  Container(color: Colors.green, width: 50, height: 50),
                  Container(color: Colors.blue, width: 50, height: 50),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(width: 100, height: 100, color: Colors.orange),
                  Container(width: 60, height: 60, color: Colors.purple),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
