import 'dart:io';

void main() {
  print('Digite o tamanho do vetor:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];

  for (int i = 0; i < n; i++) {
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < vetor.length; i++) {
    int numero = vetor[i];
    int quantidade = 0;

    for (int j = 0; j < vetor.length; j++) {
      if (vetor[j] == numero) {
        quantidade++;
      }
    }

    bool jaFoi = false;

    for (int j = 0; j < i; j++) {
      if (vetor[j] == numero) {
        jaFoi = true;
      }
    }

    if (!jaFoi) {
      print('$numero - $quantidade');
    }
  }
}