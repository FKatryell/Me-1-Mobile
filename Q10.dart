import 'dart:io';

void main() {
  int homens = 0;
  int mulheres = 0;

  int homensExperiencia = 0;
  int somaIdadeHomens = 0;

  int homensMais45 = 0;
  int mulheresMenos30 = 0;

  String nomeMulher = '';
  int menorIdade = 999;

  while (true) {
    print('Nome:');
    String nome = stdin.readLineSync()!;

    if (nome == 'FIM') {
      break;
    }

    print('Sexo:');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Tem experiencia? S/N');
    String experiencia = stdin.readLineSync()!.toUpperCase();

    if (sexo == 'M') {
      homens++;

      if (experiencia == 'S') {
        homensExperiencia++;
        somaIdadeHomens += idade;
      }

      if (idade > 45) {
        homensMais45++;
      }
    } else {
      mulheres++;

      if (idade < 30 && experiencia == 'S') {
        mulheresMenos30++;
      }

      if (experiencia == 'S' && idade < menorIdade) {
        menorIdade = idade;
        nomeMulher = nome;
      }
    }
  }

  print('Homens: $homens');
  print('Mulheres: $mulheres');

  if (homensExperiencia > 0) {
    print('Idade media dos homens com experiencia: ${somaIdadeHomens / homensExperiencia}');
  }

  print('Homens com mais de 45 anos: ${homensMais45 * 100 / homens}%');
  print('Mulheres com menos de 30 e experiencia: $mulheresMenos30');
  print('Mulher mais nova com experiencia: $nomeMulher');
}