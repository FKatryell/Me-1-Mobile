import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  double s = 0;

  for (int i = 0; i < n; i++) {
    int base = 3 + i * 2;
    int expoente = 4 + i * 4;

    double valor = pow(base, expoente).toDouble();

    if (i % 2 == 0) {
      s += valor;
    } else {
      s -= valor;
    }
  }

  print('S = $s');
}