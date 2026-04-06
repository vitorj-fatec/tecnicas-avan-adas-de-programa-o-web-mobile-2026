import 'dart:io';

void main() {
  String resposta = '';

  do {
    print('Deseja continuar? (s/n)');
    String? entrada = stdin.readLineSync();

    if (entrada == null) return;

    resposta = entrada.toLowerCase();

    if (resposta == 's') {
      print('Continuando...');
    } else if (resposta == 'n') {
      print('Encerrando...');
    } else {
      print('Resposta inválida!');
    }

  } while (resposta != 'n');
}