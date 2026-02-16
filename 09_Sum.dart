import 'dart:io';

void main() {
    stdout.write('Ingresa el primer numero: ');
    int? a = int.parse(stdin.readLineSync()!);
    stdout.write('Ingresa el segundo numero: ');
    int? b = int.parse(stdin.readLineSync()!);

    int n = a + b;

    print('resultado es: $n!');
}