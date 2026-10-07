import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync()!);

  while (numero > 0) {
    int digito = numero % 10;
    print(digito);

    numero = numero ~/ 10;
  }
}