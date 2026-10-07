import 'dart:io';

void main() {
  print('Tamanho do primeiro vetor:');
  int n1 = int.parse(stdin.readLineSync()!);

  List<int> v1 = [];

  for (int i = 0; i < n1; i++) {
    v1.add(int.parse(stdin.readLineSync()!));
  }

  print('Tamanho do segundo vetor:');
  int n2 = int.parse(stdin.readLineSync()!);

  List<int> v2 = [];

  for (int i = 0; i < n2; i++) {
    v2.add(int.parse(stdin.readLineSync()!));
  }

  List<int> v3 = [];

  int i = 0;
  int j = 0;

  while (i < n1 && j < n2) {
    if (v1[i] < v2[j]) {
      v3.add(v1[i]);
      i++;
    } else {
      v3.add(v2[j]);
      j++;
    }
  }

  while (i < n1) {
    v3.add(v1[i]);
    i++;
  }

  while (j < n2) {
    v3.add(v2[j]);
    j++;
  }

  print(v3);
}