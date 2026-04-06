import 'dart:io';

void main() {
  int contador = 0;

  print("Digite palavras (digite 'sair' para encerrar):");
  String? palavra = stdin.readLineSync();

  if (palavra == null) return;

  while (palavra?.toLowerCase() != 'sair') {
    contador++;

    palavra = stdin.readLineSync();
    if (palavra == null) break;
  }

  print('Quantidade de palavras digitadas: $contador');
}