import 'dart:io';

void main() {
  print('Ingresa tu edad');
  int edad = int.parse(stdin.readLineSync()!);

  print('Tienes licencia?');
  String tieneLicencia = stdin.readLineSync()!;

  // Operador lógico Y
  if (edad >= 18 && tieneLicencia == 'si') {
    print('Permiso de conducir aprobado');
  } else {
    print('permiso de conducir denegado');
  }

  // Operador lógico O
  print('eres usuario admin?');
  String admin = stdin.readLineSync()!;
  print('eres usuario root?');
  String usuarioRoot = stdin.readLineSync()!;

  if (admin == 'si' || usuarioRoot == 'si') {
    print('Acceso permitido');
  } else {
    print('acceso denegado');
  }

  bool activo = true;
  print(activo);
  print(!activo);
}
