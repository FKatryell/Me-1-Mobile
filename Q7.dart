import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  double x = double.parse(stdin.readLineSync()!);

  double soma = 0;

  for (int i = 0; i < n; i++) {
    int expoente = i + 2;
    int posicao = i % 7;

    int fatorial;

    if (posicao == 0) {
      fatorial = 1;
    } else if (posicao == 1) {
      fatorial = 2;
    } else if (posicao == 2) {
      fatorial = 6;
    } else if (posicao == 3) {
      fatorial = 24;
    } else if (posicao == 4) {
      fatorial = 6;
    } else if (posicao == 5) {
      fatorial = 2;
    } else {
      fatorial = 1;
    }

    double termo = pow(x, expoente) / fatorial;

    soma += termo;
  }

  print('S = $soma');
}