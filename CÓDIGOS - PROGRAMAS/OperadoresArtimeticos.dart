import 'dart:io';

void main() {
  int valor1, valor2;
  var resultado;

  print('ingrese valor 1 ... ');
  valor1 = int.parse(stdin.readLineSync()!);

  print('ingrese valor 2 ... ');
  valor2 = int.parse(stdin.readLineSync()!);

  // Operador de suma
  resultado = valor1 + valor2;
  print('suma: $resultado');

  // Operador de resta
  resultado = valor1 - valor2;
  print('resta: $resultado');