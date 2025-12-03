void main() {
  String palabra = 'Hola';
  String palabra2 = "a todos";
  String palabra3 = '0\'Neill';
  String palabra4 = "texto en linea1\n"
      "segunda linea del texto\n"
      "tercera linea";
  String palabra5 = '''estoy aprendiendo a trabajar
con Flutter pero primero hago las bases
con Dart''';
  String palabra6 = '';

  // Impresión de variables
  // print('Saludo: $palabra $palabra2');
  // print(palabra2);
  // print(palabra3);
  // print(palabra4);
  // print(palabra5);

  // Operaciones con strings
  print(palabra5.length);
  print(palabra6.isEmpty);
  print(palabra6.isNotEmpty);
  print(palabra2[4]);
  print(palabra.contains('mesa'));
  print(palabra3.startsWith('0'));
  print(palabra3.endsWith('1'));
  print(palabra5.indexOf('es'));
  print(palabra4.substring(0, 8));
  print(palabra4.split('segunda'));
  print(palabra.toUpperCase());
  print(palabra2.toLowerCase());
}
