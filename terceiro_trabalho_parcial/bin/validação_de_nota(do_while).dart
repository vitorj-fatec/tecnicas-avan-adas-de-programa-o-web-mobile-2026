import 'dart:io';

void main() {
  double nota = -1;

  do {
    print('Digite uma nota entre 0 e 10:');
    String? entrada = stdin.readLineSync();

    if (entrada == null) return;

    nota = double.tryParse(entrada) ?? -1;

    if (nota < 0 || nota > 10) {
      print('Nota inválida, tente novamente.');
    }

  } while (nota < 0 || nota > 10);

  print('Nota válida: $nota');
}