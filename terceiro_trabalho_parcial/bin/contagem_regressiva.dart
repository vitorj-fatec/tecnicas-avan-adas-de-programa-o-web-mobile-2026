import 'dart:io';

void main() {
  print('Digite um número:');
  String? entrada = stdin.readLineSync();

  if (entrada == null) return;

  int numero = int.tryParse(entrada) ?? 0;

  for (int i = numero; i >= 0; i--) {
    print(i);
  }
}