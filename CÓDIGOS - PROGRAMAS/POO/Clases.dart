//EDGAR URIEL DE LA CRUZ CASANOVA
//MIGUEL ANGEL CATALAN MATA
class Persona {
  String? nombre, apellido;
  int? edad;

  void DimeDatos(){
    print('Nombre: $nombre $apellido Edad: $edad');
  }
}

class Animal{
  String? nombre, raza;
  double? tamanio;
  bool? desparasitado, vacunado;

  void DimeDatos(){
    print('''
Nombre: $nombre
Raza: $raza
Tamaño: $tamanio cm
Desparasitado: $desparasitado
Vacunado: $vacunado''');
  }
}

void main(){
  Persona persona1 = Persona();
  Persona persona2 = Persona();
  persona1.nombre = 'Jose';
  persona1.apellido = 'Feliciano';
  persona1.edad = 50;
  persona1.DimeDatos();
  persona2.nombre = 'Ana';
  persona2.apellido = 'Contreras';
  persona2.edad = 20;
  persona2.DimeDatos();
  Animal perro1 = Animal();
  perro1.nombre = 'Eirulais';
  perro1.raza = 'Chiwawa';
  perro1.tamanio = 25.5;
  perro1.vacunado = true;
  perro1.desparasitado = true;
  perro1.DimeDatos();

}
