import 'dart:io';

void main() {
  print("Digite o valor do depósito:");
  double deposito = double.parse(stdin.readLineSync()!);

  double rendimento = deposito * 0.005;
  double valorFinal = deposito + rendimento;

  print("Após um mês, seu saldo será: R\$ ${valorFinal.toStringAsFixed(2)}");
}