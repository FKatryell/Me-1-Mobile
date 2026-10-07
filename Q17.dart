import 'dart:io';

List<int> somarVetores(List<int> v1, List<int> v2) {
  List<int> v3 = [];

  for (int i = 0; i < v1.length; i++) {
    v3.add(v1[i] + v2[i]);
  }

  return v3;
}

void main() {
  print('Tamanho dos vetores:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> v1 = [];
  List<int> v2 = [];

  for (int i = 0; i < n; i++) {
    print('V1:');
    v1.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < n; i++) {
    print('V2:');
    v2.add(int.parse(stdin.readLineSync()!));
  }

  List<int> v3 = somarVetores(v1, v2);

  int soma = 0;

  for (int numero in v3) {
    soma += numero;
  }

  print('V3: $v3');
  print('Soma: $soma');
}