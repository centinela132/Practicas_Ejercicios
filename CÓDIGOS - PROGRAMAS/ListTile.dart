import 'package:flutter/material.dart';

class Listfile extends StatelessWidget {
  const Listfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de ListFile'),
        ), // AppBar
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Uriel'),
              subtitle: Text('uriel'),
              trailing: Icon(Icons.arrow_forward_ios),
            ), // ListTile
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Correo'),
              subtitle: Text('Uriel@gmail.com'),
              trailing: Icon(Icons.arrow_forward_ios),
            ), // ListTile
          ],
        ), // ListView
      ), // Scaffold
    ); // MaterialApp
  }
}