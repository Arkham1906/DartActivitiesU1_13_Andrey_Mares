import 'dart:io';

void main() {
    stdout.write('Enter the first number (a): ');
    int? a = int.parse(stdin.readLineSync()!);
    stdout.write('Enter the second number (b): ');
    int? b = int.parse(stdin.readLineSync()!);
    stdout.write('Enter the third number (c): ');
    int? c = int.parse(stdin.readLineSync()!);
    stdout.write('Enter the last number (d): ');
    int? d = int.parse(stdin.readLineSync()!);
    int aux;

    //comparar a contra b, c y d
    if (a < b) {
        aux = a;
        a = b;
        b = aux;
    }
    if (a < c) {
        aux = a;
        a = c;
        c = aux;
    }
    if (a < d) {
        aux = a;
        a = d;
        d = aux;
    }

    // b contra c y d
    if (b < c) {
        aux = b;
        b = c;
        c = aux;

        if (b < d) {
        aux = b;
        b = d;
        d = aux;
        }
    }

    // c contra d
    if (c < d) {
        aux = c;
        c = d;
        d = aux;
    }

    int temp;

    if (a < b) { temp = a; a = b; b = temp; }
    if (a < c) { temp = a; a = c; c = temp; }
    if (a < d) { temp = a; a = d; d = temp; }
    if (b < c) { temp = b; b = c; c = temp; }
    if (b < d) { temp = b; b = d; d = temp; }
    if (c < d) { temp = c; c = d; d = temp; }
    
    print('ordered from biggest to smallest: $a, $b, $c, $d');
}