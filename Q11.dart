import 'dart:io';

void main() {
  double somaHomens = 0;
  double somaMulheres = 0;

  int qtdHomens = 0;
  int qtdMulheres = 0;

  while (true) {
    print('Codigo:');
    String codigo = stdin.readLineSync()!;

    if (codigo == '9999') {
      break;
    }

    print('Nome:');
    String nome = stdin.readLineSync()!;

    print('Sexo:');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Horas:');
    int horas = int.parse(stdin.readLineSync()!);

    double bruto = horas * 12.30;
    double liquido;

    if (sexo == 'M') {
      liquido = bruto * 0.90;
      somaHomens += liquido;
      qtdHomens++;
    } else {
      liquido = bruto * 0.95;
      somaMulheres += liquido;
      qtdMulheres++;
    }

    print('$codigo - $nome - Salario bruto: $bruto - Salario liquido: $liquido');
  }

  if (qtdHomens > 0) {
    print('Media dos homens: ${somaHomens / qtdHomens}');
  }

  if (qtdMulheres > 0) {
    print('Media das mulheres: ${somaMulheres / qtdMulheres}');
  }
}