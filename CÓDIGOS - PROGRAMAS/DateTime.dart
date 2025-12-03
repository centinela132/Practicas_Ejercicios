//EDGAR URIEL DE LA CRUZ CASANOVA
//MIGUEL ANGEL CATALAN MATA
void main(){
  DateTime ahora = DateTime.now();
  print(ahora);
  print('Año: ${ahora.year}');
  print('Mes: ${ahora.month}');
  print('Día: ${ahora.day}');
  print('Hora: ${ahora.hour}');
  print('Minutos: ${ahora.minute}');
  print('Segundos: ${ahora.second}');
  print('===================== \n');
  print(ahora.add(Duration(days: 10)));
  print(ahora.subtract(Duration(days: 8)));
  print('===================== \n');
  DateTime fechaIngreso = DateTime(2025,9,17);
  DateTime fechaCancelacion = DateTime(2025,9,17);
  print(fechaIngreso.isBefore(fechaCancelacion));
  print(fechaIngreso.isAfter(fechaCancelacion));
  print(fechaIngreso.isAtSameMomentAs(fechaCancelacion));
  //fecha específica
  DateTime cumple = DateTime(1995,5,20);
  print(cumple);

}