import 'dart:io';

void main() {
  List<int> v = [];

  for (int j = 0; j < 4; j++) {
    print('Tamanho do vetor ${j + 1}:');
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      v.add(int.parse(stdin.readLineSync()!));
    }
  }

  v.sort();

  print(v);
}