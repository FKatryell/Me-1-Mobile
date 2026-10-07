import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numero = random.nextInt(100) + 1;

  int menor = 1;
  int maior = 100;

  while (true) {
    print('Digite um número entre $menor e $maior:');
    int chute = int.parse(stdin.readLineSync()!);

    if (chute == numero) {
      print('Acertou!');
      break;
    }

    if (chute < numero) {
      menor = chute + 1;
      print('O número está entre $menor e $maior');
    } else {
      maior = chute - 1;
      print('O número está entre $menor e $maior');
    }
  }
}