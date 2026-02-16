import 'dart:io';

void main() {
    double a = 1;
    double t = 0;
    print("Introduzca todos los numeros a sumar o introduzca (0) para detener el programa");
    while (a != 0) {
        a = double.parse(stdin.readLineSync()!);
        t += a;
    }
    print("La suma de todos los digitos es: $t");
}