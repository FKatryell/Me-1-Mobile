import 'dart:io';

void main() {
  List<List<int>> vetores = [];

  for (int i = 0; i < 4; i++) {
    print('Tamanho do vetor ${i + 1}:');
    int n = int.parse(stdin.readLineSync()!);

    List<int> vetor = [];

    for (int j = 0; j < n; j++) {
      vetor.add(int.parse(stdin.readLineSync()!));
    }

    vetores.add(vetor);
  }

  List<int> resultado = [];

  for (int numero in vetores[0]) {
    if (vetores[1].contains(numero) &&
        vetores[2].contains(numero) &&
        vetores[3].contains(numero) &&
        !resultado.contains(numero)) {
      resultado.add(numero);
    }
  }

  print(resultado);
}