import 'dart:io';

int factorial(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

main() {
  int num = 0;
  stdout.writeln('Ingresa el numero del factorial: ');
  num = int.parse(stdin.readLineSync()!);

  int resultado = factorial(num);

  print('El resultado del factorial $num es $resultado');
}
