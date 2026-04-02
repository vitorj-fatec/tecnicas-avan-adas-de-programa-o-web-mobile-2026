import 'dart:io';

void main() {
  print('--- CARDÁPIO ---');
  print('101 - Cachorro Quente  - R\$ 14,20');
  print('102 - Bauru Simples    - R\$ 12,30');
  print('103 - Bauru com Ovo    - R\$ 13,50');
  print('104 - Hambúrguer       - R\$ 10,20');
  print('105 - Cheeseburger     - R\$ 15,30');
  print('106 - Refrigerante     - R\$ 10,00');
  print('----------------');

  print('Digite o código do item:');
  String? entradaCodigo = stdin.readLineSync();
  print('Digite a quantidade:');
  String? entradaQtd = stdin.readLineSync();

  if (entradaCodigo == null || entradaQtd == null) return;

  int codigo = int.tryParse(entradaCodigo) ?? 0;
  int quantidade = int.tryParse(entradaQtd) ?? 0;
  
  double precoUnitario = 0;
  String nomeItem = "";

  if (codigo == 101) {
    nomeItem = "Cachorro Quente";
    precoUnitario = 14.20;
  } else if (codigo == 102) {
    nomeItem = "Bauru Simples";
    precoUnitario = 12.30;
  } else if (codigo == 103) {
    nomeItem = "Bauru com Ovo";
    precoUnitario = 13.50;
  } else if (codigo == 104) {
    nomeItem = "Hambúrguer";
    precoUnitario = 10.20;
  } else if (codigo == 105) {
    nomeItem = "Cheeseburger";
    precoUnitario = 15.30;
  } else if (codigo == 106) {
    nomeItem = "Refrigerante";
    precoUnitario = 10.00;
  } else {
    print('Código do lanche inválido');
    return;
  }

  double total = precoUnitario * quantidade;
  print('\nPedido: $quantidade x $nomeItem');
  print('Total a pagar: R\$ $total');
}