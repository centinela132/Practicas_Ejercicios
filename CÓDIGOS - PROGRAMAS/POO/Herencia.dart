//EDGAR URIEL DE LA CRUZ CASANOVA
//MIGUEL ANGEL CATALAN MATA
class Animal{
  String? nombre, raza;
  int? tamanio;

  Animal(this.nombre, this.raza, this.tamanio);

  void DameDatos(){
    print('Nombre: $nombre, Raza: $raza, tamanio: $tamanio');
    print('$nombre está comiendo');
  }
}

class Perro extends Animal{
  Perro(String nombre, String raza, int tamanio)
      :super(nombre, raza,tamanio);

  void DameDatos(){
    print('Nombre: $nombre, Raza: $raza, tamaño: $tamanio');
    print('$nombre está comiendo');
  }
}

void main(){
  Animal objeto1 = Animal('Garfield', 'Angora', 50);
  objeto1.DameDatos();
  Perro objeto2 = Perro('Lirulais', 'Chiwawa', 25);
  objeto2.DameDatos();

}