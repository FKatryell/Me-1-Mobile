import 'dart:io';

void main() {
  double total = 0;

  while (true) {
    print('Digite o bolo:');
    String bolo = stdin.readLineSync()!.trim().toLowerCase();

    if (bolo == 'fim') {
      print('Total = $total');
      break;
    }

    if (bolo == 'cenoura') {
      total = total + 6.5;
      print('Cenoura adicionada');
    } else if (bolo == 'chocolate') {
      total = total + 7.5;
      print('Chocolate adicionado');
    } else if (bolo == 'ovos') {
      total = total + 5.5;
      print('Ovos adicionado');
    } else {
      print('Bolo não encontrado');
    }
  }
}