import 'dart:io';

void main() {
  print('--- REGRAS DA LANCHONETE ---');
  print('- Bauru não pode ser com Guaraná');
  print('- X-Frango não pode ser com Água');
  print('- Pizza só aceita Vinho ou Água');
  print('----------------------------');

  print('Informe o lanche:');
  String? lancheInput = stdin.readLineSync();
  print('Informe a bebida:');
  String? bebidaInput = stdin.readLineSync();

  if (lancheInput == null || bebidaInput == null) return;

  String l = lancheInput.toLowerCase().trim();
  String b = bebidaInput.toLowerCase().trim();
  bool valido = true;

  if (l == 'bauru' && b == 'guaraná' || b == 'guarana') {
    valido = false;
  } else if (l == 'x-frango' && b == 'água' || b == 'agua') {
    valido = false;
  } else if (l == 'pizza' && (b != 'vinho' && b != 'água' && b != 'agua')) {
    valido = false;
  }

  if (valido) {
    print('Pedido aceito!');
  } else {
    print('O pedido não pode ser atendido devido a restrições.');
  }
}