import 'package:flutter/material.dart';

class Layoutbuilder extends StatelessWidget {
  const Layoutbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener orientación
    final orientation = MediaQuery.of(context).orientation;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo layoutbuilder')),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Usar orientación para cambiar diseño
            if (orientation == Orientation.portrait) {
              return Container(
                color: Colors.red,
                width: constraints.maxWidth,
                height: 100,
                child: const Center(
                  child: Text('MODO VERTICAL - Compacto'),
                ),
              );
            } else {
              return Container(
                color: Colors.green,
                width: constraints.maxWidth,
                height: 200,
                child: const Center(
                  child: Text('MODO HORIZONTAL - Amplio'),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}