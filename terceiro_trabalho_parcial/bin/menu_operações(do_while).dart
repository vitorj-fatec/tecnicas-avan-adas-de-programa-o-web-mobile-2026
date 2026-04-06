import 'dart:io';

void main() {
  int opcao = -1;

  do {
    print('\n--- MENU ---');
    print('1 - Somar');
    print('2 - Subtrair');
    print('0 - Sair');

    String? entrada = stdin.readLineSync();
    if (entrada == null) return;

    opcao = int.tryParse(entrada) ?? -1;

    if (opcao == 1) {
      print('Você escolheu SOMAR');
    } else if (opcao == 2) {
      print('Você escolheu SUBTRAIR');
    } else if (opcao != 0) {
      print('Opção inválida');
    }

  } while (opcao != 0);

  print('Programa encerrado.');
}