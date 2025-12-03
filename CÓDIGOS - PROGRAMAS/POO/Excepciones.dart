//EDGAR URIEL DE LA CRUZ CASANOVA
//MIGUEL ANGEL CATALAN MATA
import 'dart:io';

void main(){
  try{
    print('Ingrese valor1...');
    int? valor1 = int.parse(stdin.readLineSync()!);
    print('Ingrese valor2...');
    int? valor2 = int.parse(stdin.readLineSync()!);

    int resultado = valor1 ~/ valor2;
    print('Resultado: $resultado');

  } on FormatException {
    print('Debe ingresar un valor entero');
  } catch(ERROR) {
    print('Error en operacion: $ERROR');
  }

}