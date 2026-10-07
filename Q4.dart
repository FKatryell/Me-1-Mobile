import 'dart:io';

void main() {
  double soma = 0;
  double somaF = 0;

  int total = 0;
  int aprovados = 0;
  int qtdF = 0;

  String maiorM = '';
  String maiorF = '';

  double maiorMediaM = 0;
  double maiorMediaF = 0;

  while (true) {
    print('Matricula:');
    String matricula = stdin.readLineSync()!;

    if (matricula == '00000') {
      break;
    }

    print('Nome:');
    String nome = stdin.readLineSync()!;

    print('Sexo:');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Nota 1:');
    double n1 = double.parse(stdin.readLineSync()!);

    print('Nota 2:');
    double n2 = double.parse(stdin.readLineSync()!);

    print('Nota 3:');
    double n3 = double.parse(stdin.readLineSync()!);

    print('Faltas:');
    int faltas = int.parse(stdin.readLineSync()!);

    double media = (n1 + n2 + n3) / 3;

    soma += media;
    total++;

    if (sexo == 'F') {
      somaF += media;
      qtdF++;
    }

    if (media >= 7 && faltas <= 18) {
      aprovados++;

      if (sexo == 'M' && media > maiorMediaM) {
        maiorMediaM = media;
        maiorM = matricula;
      }

      if (sexo == 'F' && media > maiorMediaF) {
        maiorMediaF = media;
        maiorF = matricula;
      }
    }
  }

  print('Media da turma: ${soma / total}');
  print('Percentual de aprovados: ${aprovados * 100 / total}%');
  print('Maior media masculino: $maiorM');
  print('Maior media feminino: $maiorF');
  print('Media das mulheres: ${somaF / qtdF}');
}