import 'dart:io';

void chk(int n) {
    bool ok = true;
    if (n <= 1) {
        ok = false;
    } else {
        for (int i = 2; i <= n ~/ 2; i++) {
        if (n % i == 0) {
            ok = false;
            break;
        }
        }
    }
    if (ok) {
        print('$n es un número primo.');
    } else {
        print('$n no es un número primo.');
    }
}

void main() {
    int v = 0;
    stdout.write('Ingrese un número para verificar si es primo: ');
    v = int.parse(stdin.readLineSync()!);
    chk(v);
}