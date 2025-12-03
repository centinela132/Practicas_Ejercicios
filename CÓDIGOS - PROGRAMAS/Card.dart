import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uso de Widget Card'),
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ), // RoundedRectangleBorder
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aviso importante',
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    ),
                  ), // Text
                  SizedBox(height: 8),
                  Text('Tienes actualizaciones pendientes en tu aplicación'),
                ],
              ), // Column
            ), // Padding
          ), // Card
        ), // Padding
      ), // Scaffold
    ); // MaterialApp
  }
}
