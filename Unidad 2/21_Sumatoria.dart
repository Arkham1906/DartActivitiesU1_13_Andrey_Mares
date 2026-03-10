import 'dart:io';

// Función recursiva sumatoria
int sumatoria(int num) {
  if (num == 1) {
    return 1;
  } else {
    return num + sumatoria(num - 1);
  }
}

main() {
  int num = 0;
  stdout.writeln('Meta el numero para la sumatoria');
  num = int.parse(stdin.readLineSync()!);

  int resultado = sumatoria(num);
  stdout.writeln("Esta es la sumatoria total: $resultado");
}
