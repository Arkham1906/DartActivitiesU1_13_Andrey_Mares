import 'dart:io';

void main() {
    int a = 0;
    stdout.write('Ingrese un número de la tabla de multiplicar: ');
    a = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < 10; i++) {
        int t = 0;
        t = a * i;
        stdout.writeln('$a x $i = $t \n');
    }
}