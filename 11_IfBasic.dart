import 'dart:io';

void main() {
    stdout.write('Ingresa el primer numero: ');
    int? a = int.parse(stdin.readLineSync()!);
    stdout.write('Ingresa el segundo numero: ');
    int? b = int.parse(stdin.readLineSync()!);

    if (a > b) {
        print('El numero mayor es: $a');
    } else if (b > a) {
        print('El numero mayor es: $b');
    } else {
        print('Ambos numeros son iguales: $a');
    }
}