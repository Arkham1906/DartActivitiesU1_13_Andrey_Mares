import 'dart:io';
void tabla(int x){
    for (int i = 0; i < 10; i++) {
        int v = 0;
        v = x * i;
        stdout.write('$x * $i = $v \n');
    }
}
void main(){
    int n = 0;
    stdout.write('Ingrese un numero para la tabla de multiplicar: ');
    n = int.parse(stdin.readLineSync()!);
    tabla(n);
}