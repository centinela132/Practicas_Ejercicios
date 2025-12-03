
void main(){
  Map<String, String> capitales = {
    'España': 'Madrid',
    'Colombia': 'Bogotá',
    'Perú': 'Lima',
    'México': 'Ciudad de Mexico'
  };

  Map<String, int> usuarios = {
    'usuario01': 3216584,
    'usuario02': 2342342,
    'usuario03': 5656566,
  };

  /* print(capitales);
    print(capitales['España']);

    capitales['Rep. Dominicana']='Santo Domingo';
    print(capitales);
    capitales['Perú']='valor no encontrado';
    print(capitales);*/

  print(capitales.keys);
  print(capitales.values);
  print(capitales.length);
  print(capitales.isEmpty);
  print(capitales.containsKey('Perú'));
  print(capitales.containsValue('Mexico'));
  capitales.clear();
  print(capitales);

}