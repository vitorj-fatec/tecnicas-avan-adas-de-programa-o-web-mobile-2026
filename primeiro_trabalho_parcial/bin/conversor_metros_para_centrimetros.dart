import 'dart:io';

void main() {
  print("Digite o valor em metros:");
  double? metros = double.tryParse(stdin.readLineSync()!);

  if (metros != null) {
    double centimetros = metros * 100;
    print("$metros metros equivalem a $centimetros centímetros.");
  }
}