import 'dart:io';

void main() {
  print('Quantidade de bois:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numeros = [];
  List<double> pesos = [];

  for (int i = 0; i < n; i++) {
    print('Numero do boi:');
    numeros.add(int.parse(stdin.readLineSync()!));

    print('Peso:');
    pesos.add(double.parse(stdin.readLineSync()!));
  }

  while (true) {
    print('Peso inicial:');
    double inicio = double.parse(stdin.readLineSync()!);

    print('Peso final:');
    double fim = double.parse(stdin.readLineSync()!);

    if (inicio == 0 && fim == 0) {
      break;
    }

    for (int i = 0; i < n; i++) {
      if (pesos[i] >= inicio && pesos[i] <= fim) {
        print('Boi ${numeros[i]} - ${pesos[i]} kg');
      }
    }
  }
}