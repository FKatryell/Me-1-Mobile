import 'dart:io';

void main() {
  int total = 0;
  int baixo = 0;
  int normal = 0;
  int alto = 0;

  String maiorNome = '';
  double maiorPeso = 0;

  while (true) {
    print('Nome:');
    String nome = stdin.readLineSync()!;

    if (nome == 'FIM') {
      break;
    }

    print('Sexo:');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Peso:');
    double peso = double.parse(stdin.readLineSync()!);

    String classificacao;

    if (peso <= 2) {
      classificacao = 'Baixo Peso';
      baixo++;
    } else if (peso <= 4) {
      classificacao = 'Normal';
      normal++;
    } else {
      classificacao = 'Alto Peso';
      alto++;
    }

    print('$nome - $sexo - $classificacao');

    if (sexo == 'F' && peso > maiorPeso) {
      maiorPeso = peso;
      maiorNome = nome;
    }

    total++;
  }

  print('Maior peso feminino: $maiorNome');

  print('Baixo peso: ${baixo * 100 / total}%');
  print('Normal: ${normal * 100 / total}%');
  print('Alto peso: ${alto * 100 / total}%');
}