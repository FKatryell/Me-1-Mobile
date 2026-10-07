import 'dart:io';

void main() {
  int total = 0;
  int homens = 0;
  int mulheres = 0;

  String menorNome = '';
  int menorPontuacao = 999999;

  String maiorCodigoSI = '';
  int maiorPontuacaoSI = 0;

  while (true) {
    print('Codigo:');
    String codigo = stdin.readLineSync()!;

    if (codigo == '0000') {
      break;
    }

    print('Curso:');
    String curso = stdin.readLineSync()!.toUpperCase();

    print('Nome:');
    String nome = stdin.readLineSync()!;

    print('Sexo:');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Pontuacao:');
    int pontuacao = int.parse(stdin.readLineSync()!);

    total++;

    if (sexo == 'M') {
      homens++;

      if (pontuacao < menorPontuacao) {
        menorPontuacao = pontuacao;
        menorNome = nome;
      }
    } else {
      mulheres++;
    }

    if (curso == 'SI' && sexo == 'M' && pontuacao > maiorPontuacaoSI) {
      maiorPontuacaoSI = pontuacao;
      maiorCodigoSI = codigo;
    }

    if (curso == 'CC' && pontuacao > 2500) {
      print('$codigo - $nome - $pontuacao');
    }
  }

  print('Menor pontuacao masculina: $menorNome');
  print('Maior pontuacao masculina SI: $maiorCodigoSI');
  print('Percentual masculino: ${homens * 100 / total}%');
  print('Percentual feminino: ${mulheres * 100 / total}%');
}