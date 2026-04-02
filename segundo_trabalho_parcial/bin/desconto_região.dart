import 'dart:io';

void main() {
  print('--- TABELA DE ORIGEM ---');
  print('1 – Região Norte (5%)');
  print('2 – Região Sul (15%)');
  print('3 – Região Sudeste (7%)');
  print('4 – Região Nordeste (12%)');
  print('5 – Região Centro-Oeste (20%)');
  print('------------------------');

  print('Insira o preço do produto:');
  String? entradaPreco = stdin.readLineSync();
  print('Insira o código de origem:');
  String? entradaCodigo = stdin.readLineSync();

  if (entradaPreco == null || entradaCodigo == null) {
    print('Os campos preço e código são obrigatórios');
    return;
  }

  double preco = double.tryParse(entradaPreco) ?? 0;
  int codigo = int.tryParse(entradaCodigo) ?? 0;
  
  double desconto = 0;
  String regiaoNome = "";

  if (codigo == 1) {
    regiaoNome = "Norte";
    desconto = 0.05;
  } else if (codigo == 2) {
    regiaoNome = "Sul";
    desconto = 0.15;
  } else if (codigo == 3) {
    regiaoNome = "Sudeste";
    desconto = 0.07;
  } else if (codigo == 4) {
    regiaoNome = "Nordeste";
    desconto = 0.12;
  } else if (codigo == 5) {
    regiaoNome = "Centro-Oeste";
    desconto = 0.20;
  } else {
    regiaoNome = "Importado";
    desconto = 0;
  }

  double valorDesconto = preco * desconto;
  double valorFinal = preco - valorDesconto;

  print('\nResultado:');
  print('Produto vindo da região: $regiaoNome');
  print('Desconto aplicado: R\$ $valorDesconto');
  print('Valor final a pagar: R\$ $valorFinal');
}