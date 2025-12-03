import 'package:flutter/material.dart';

class ImagenWidget extends StatelessWidget {
  const ImagenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mostrar Imagen")),
      body: Center(
        child: Image.asset(
          'lib/imagenes/playera.jpg', // Ruta de la imagen
          width: 250,  // Ancho de la imagen
          height: 250,  // Alto de la imagen
          fit: BoxFit.cover,  // Ajuste de la imagen
        ),
      ),
    );
  }
}
