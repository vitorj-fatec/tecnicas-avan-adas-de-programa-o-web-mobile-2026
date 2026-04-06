import 'dart:io';

void main() {
  print('Digite o valor de N:');
  String? entradaN = stdin.readLineSync();

  print('Digite o valor de k:');
  String? entradaK = stdin.readLineSync();

  if (entradaN == null || entradaK == null) return;

  int n = int.tryParse(entradaN) ?? 0;
  int k = int.tryParse(entradaK) ?? 1;

  int contador = 0;

  for (int i = 1; i <= n; i++) {
    if (i % k == 0) {
      contador++;
    }
  }

  print('Existem $contador múltiplos de $k ,entre 1 e $n');
}