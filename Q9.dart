void main() {
  for (int numero = 1000; numero <= 9999; numero++) {
    int primeira = numero ~/ 100;
    int segunda = numero % 100;

    int soma = primeira + segunda;

    if (soma * soma == numero) {
      print(numero);
    }
  }
}