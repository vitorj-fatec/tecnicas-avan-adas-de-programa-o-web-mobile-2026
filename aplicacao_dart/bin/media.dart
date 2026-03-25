import 'dart:io';

void main(){
  stdout.write('Qual a nota da prova?\n');
  String? valor1 = stdin.readLineSync();
  double? prova = double.tryParse(valor1!) ?? 0.0;

  stdout.write('Qual a nota do trabalho?\n');
  double? trabalho = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  double? media = prova*0.6 + trabalho * 0.4;

  stdout.write('A sua média e: $media\n?');
}