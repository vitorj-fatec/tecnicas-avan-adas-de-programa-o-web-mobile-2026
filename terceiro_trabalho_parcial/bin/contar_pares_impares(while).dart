import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;

  print('Digite números (0 para parar):');
  String? entrada = stdin.readLineSync();

  if (entrada == null) return;

  int numero = int.tryParse(entrada) ?? 0;

  while (numero != 0) {
    if (numero % 2 == 0) {
      pares++;
    } else {
      impares++;
    }

    entrada = stdin.readLineSync();
    if (entrada == null) break;

    numero = int.tryParse(entrada) ?? 0;
  }

  print('Quantidade de pares: $pares');
  print('Quantidade de ímpares: $impares');
}