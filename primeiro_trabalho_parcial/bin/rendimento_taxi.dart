import 'dart:io';

void main() {
  const precoCombustivel = 6.50;

  print("KM inicial:");
  double kmInicial = double.parse(stdin.readLineSync()!);

  print("KM final:");
  double kmFinal = double.parse(stdin.readLineSync()!);

  print("Litros consumidos:");
  double litros = double.parse(stdin.readLineSync()!);

  print("Valor total recebido dos passageiros:");
  double totalRecebido = double.parse(stdin.readLineSync()!);

  double distancia = kmFinal - kmInicial;
  double mediaConsumo = distancia / litros;
  double gastoCombustivel = litros * precoCombustivel;
  double lucroLiquido = totalRecebido - gastoCombustivel;

  print("\n--- Relatório do Dia ---");
  print("Média de consumo: ${mediaConsumo.toStringAsFixed(2)} Km/L");
  print("Lucro líquido: R\$ ${lucroLiquido.toStringAsFixed(2)}");
}