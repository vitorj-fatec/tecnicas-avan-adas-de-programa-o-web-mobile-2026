import 'dart:io';

void main() {
  print('--- TABELA DE IMPOSTO DE RENDA ---');
  print('Até R\$ 2.000,00: Isento');
  print('R\$ 2.000,01 a R\$ 5.000,00: 10%');
  print('R\$ 5.000,01 a R\$ 10.000,00: 15%');
  print('Acima de R\$ 10.000,00: 20%');
  print('----------------------------------');

  print('Insira o seu salário mensal:');
  String? entradaSalario = stdin.readLineSync();

  if (entradaSalario == null) return;

  double salarioBruto = double.tryParse(entradaSalario) ?? 0;
  double imposto = 0;

  if (salarioBruto <= 2000) {
    imposto = 0;
  } else if (salarioBruto <= 5000) {
    imposto = salarioBruto * 0.10;
  } else if (salarioBruto <= 10000) {
    imposto = salarioBruto * 0.15;
  } else {
    imposto = salarioBruto * 0.20;
  }

  double liquido = salarioBruto - imposto;

  print('Salário bruto: R\$ ${salarioBruto.toStringAsFixed(2)}');
  print('Valor do imposto: R\$ ${imposto.toStringAsFixed(2)}');
  print('Salário líquido: R\$ ${liquido.toStringAsFixed(2)}');
}