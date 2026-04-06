import 'dart:io';

void main() {
  print('Digite um número:');
  String? entrada = stdin.readLineSync();

  if (entrada == null) return;

  int numero = int.tryParse(entrada) ?? 0;
  int soma = 0;

  for (int i = 1; i <= numero; i++) {
    soma += i;
  }

  print('A soma de 1 até $numero é: $soma');
}