void main(){

  List<int> numeros = [1, 2, 32, 500, 004];
  List<String> frutas = ['manzanas', 'peras', 'uvas', 'melones'];
  List<String> vacia = [];
  print(numeros);
  print(frutas);

  frutas.add('Naranjas');
  print(frutas);

  var Elementos = List<String>.filled(5, 'bla');
  print(Elementos);
  numeros.addAll([90, 91, 92]);
  print(numeros);
  print(frutas[3]);
  frutas.insert(1, 'sandias');
  print(frutas);
  frutas.remove('sandias');
  print(frutas);
  frutas.removeAt(0);
  print(frutas);
  frutas.clear();
  print(frutas);

}