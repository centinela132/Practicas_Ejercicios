import 'dart:io';

class Auto {
  String? marca, modelo;
  int? anio;

  // getter
  String DimeDatos() {
    return '''Marca: $marca
Modelo: $modelo
Año: $anio''';
  }

  // setter
  void PideDatos() {
    print('Dime marca del vehículo...');
    marca = stdin.readLineSync();
    print('Dime modelo del vehículo...');
    modelo = stdin.readLineSync();
    print('Dime año del vehículo...');
    anio = int.parse(stdin.readLineSync()!);
  }
}

void main() {
  Auto auto1 = Auto();
  auto1.PideDatos();
  print(auto1.DimeDatos());

}