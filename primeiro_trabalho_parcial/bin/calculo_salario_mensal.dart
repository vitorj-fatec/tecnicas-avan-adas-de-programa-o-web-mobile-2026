import 'dart:io';

void main() {
  print("Quanto você ganha por hora?");
  double valorHora = double.parse(stdin.readLineSync()!);

  print("Quantas horas você trabalhou no mês?");
  double horasTrabalhadas = double.parse(stdin.readLineSync()!);

  double salarioTotal = valorHora * horasTrabalhadas;
  print("Seu salário total este mês é: R\$ ${salarioTotal.toStringAsFixed(2)}");
}