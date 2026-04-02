import 'dart:io';

void main() {
  print('Informe o nome de um estado brasileiro:');
  String? entrada = stdin.readLineSync();

  if (entrada == null) return;

  String nome = entrada.toLowerCase().trim();

  if (nome == 'acre' || nome == 'amapá' || nome == 'amazonas' || nome == 'pará' || nome == 'rondônia' || nome == 'roraima' || nome == 'tocantins') {
    print('Região: Norte');
  } else if (nome == 'alagoas' || nome == 'bahia' || nome == 'ceará' || nome == 'maranhão' || nome == 'paraíba' || nome == 'pernambuco' || nome == 'piauí' || nome == 'rio grande do norte' || nome == 'sergipe') {
    print('Região: Nordeste');
  } else if (nome == 'goiás' || nome == 'mato grosso' || nome == 'mato grosso do sul' || nome == 'distrito federal') {
    print('Região: Centro-Oeste');
  } else if (nome == 'espírito santo' || nome == 'minas gerais' || nome == 'rio de janeiro' || nome == 'são paulo') {
    print('Região: Sudeste');
  } else if (nome == 'paraná' || nome == 'rio grande do sul' || nome == 'santa catarina') {
    print('Região: Sul');
  } else {
    print('Estado não reconhecido.');
  }
}