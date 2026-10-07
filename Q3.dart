import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int a = 15;
  int b = 100;
  int c = 2;

  for (int i = 0; i < n; i++) {
    if (i % 3 == 0) {
      print(a);
      a = a + 5;
    } else if (i % 3 == 1) {
      print(b);
      b = b + 10;
    } else {
      print(c);
      c = c * 2;
    }
  }
}