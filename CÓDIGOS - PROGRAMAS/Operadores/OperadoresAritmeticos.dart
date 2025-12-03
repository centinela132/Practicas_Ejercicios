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

  // Operador de multiplicación
  resultado = valor1 * valor2;
  print('multiplicación: $resultado');

  // Operador de división
  resultado = valor1 / valor2;
  print('división: $resultado');

  // Operador de división entera
  resultado = valor1 ~/ valor2;
  print('división entera: $resultado');

  // Operador de residuo
  resultado = valor1 % valor2;
  print('residuo: $resultado');
}
