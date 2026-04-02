import 'dart:io';

void main() {
  print('--- BOMBA DE COMBUSTÍVEL ---');
  print('1 - Gasolina comum: R\$ 6,50');
  print('2 - Gasolina premium: R\$ 7,80');
  print('3 - Diesel: R\$ 5,90');
  print('4 - Álcool: R\$ 4,20');
  print('----------------------------');

  print('Informe o tipo (1 a 4):');
  String? entradaTipo = stdin.readLineSync();
  print('Informe a quantidade de litros:');
  String? entradaLitros = stdin.readLineSync();

  if (entradaTipo == null || entradaLitros == null) return;

  int tipo = int.tryParse(entradaTipo) ?? 0;
  double litros = double.tryParse(entradaLitros) ?? 0;
  double precoUn = 0;
  String nome = "";

  if (tipo == 1) {
    nome = "Gasolina Comum";
    precoUn = 6.50;
  } else if (tipo == 2) {
    nome = "Gasolina Premium";
    precoUn = 7.80;
  } else if (tipo == 3) {
    nome = "Diesel";
    precoUn = 5.90;
  } else if (tipo == 4) {
    nome = "Álcool";
    precoUn = 4.20;
  } else {
    print('Combustível inválido.');
    return;
  }

  double total = litros * precoUn;
  print('Combustível: $nome | Litros: $litros');
  print('Total a pagar: R\$ ${total.toStringAsFixed(2)}');
}