import 'dart:io';

void main() {
    List<String> s1 = ['A+', 'A', 'B', 'C', 'D', 'F'];
    List<String> s2 = ['10', '9', '8', '7', '6', '5'];
    String? x;
    bool ok = false;
    int pos = -1;
    print('Introduzca la calificación en el sistema americano:');
    while (!ok) {
        x = stdin.readLineSync();
        if (x != null) {
            x = x.trim().toUpperCase();
            if (s1.contains(x)) {
                ok = true;
                pos = s1.indexOf(x);
            } else {
                print('Ingrese una calificación valida:');
            }
        }
    }
    print('La calificación $x equivale a ${s2[pos]} en el sistema de Mex');
}