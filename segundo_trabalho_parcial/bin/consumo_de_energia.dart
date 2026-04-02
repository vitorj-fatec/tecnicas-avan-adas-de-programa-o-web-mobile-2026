import 'dart:io';

void main() {
  print('--- COMPANHIA DE ENERGIA ---');
  print('Até 100 kWh: R\$ 0,80');
  print('101 a 300 kWh: R\$ 1,10');
  print('301 a 500 kWh: R\$ 1,40');
  print('Acima de 500 kWh: R\$ 1,80');
  print('* Extra de 10% se consumo > 400 kWh');
  print('----------------------------');

  print('Insira o consumo mensal (kWh):');
  String? entradaConsumo = stdin.readLineSync();

  if (entradaConsumo == null) return;

  double consumo = double.tryParse(entradaConsumo) ?? 0;
  double valorBase = 0;

  if (consumo <= 100) {
    valorBase = consumo * 0.80;
  } else if (consumo <= 300) {
    valorBase = consumo * 1.10;
  } else if (consumo <= 500) {
    valorBase = consumo * 1.40;
  } else {
    valorBase = consumo * 1.80;
  }

  double taxaExtra = 0;
  if (consumo > 400) {
    taxaExtra = valorBase * 0.10;
  }

  double total = valorBase + taxaExtra;

  print('Consumo mensal: $consumo kWh');
  print('Valor base: R\$ ${valorBase.toStringAsFixed(2)}');
  print('Taxa extra: R\$ ${taxaExtra.toStringAsFixed(2)}');
  print('Valor total da conta: R\$ ${total.toStringAsFixed(2)}');
}