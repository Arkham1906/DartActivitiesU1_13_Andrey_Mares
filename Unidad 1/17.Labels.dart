import 'dart:io';

void main() {
    outter:
    for (int a = 0; a < 5; a++) {
        stdout.writeln('J = $a');
        for (int b = 0; b < 5; b++) {
        if (b == 3) {
            break outter; 
        }
        stdout.writeln('  I = $b');
        }
    }
    print('Se salió del ciclo externo');
}