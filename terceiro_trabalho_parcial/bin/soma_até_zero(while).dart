import 'dart:io';

void main() {
  int soma = 0;
  int quantidade = 0;

  print('Digite números (0 para parar):');
  String? entrada = stdin.readLineSync();

  if (entrada == null) return;

  int numero = int.tryParse(entrada) ?? 0;

  while (numero != 0) {
    soma += numero;
    quantidade++;

    entrada = stdin.readLineSync();
    if (entrada == null) break;

    numero = int.tryParse(entrada) ?? 0;
  }

  print('Soma total: $soma');
  print('Quantidade digitada: $quantidade');
}