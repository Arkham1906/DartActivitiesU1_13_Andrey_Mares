import 'dart:io';

void main(){
    double n = 1;
    while(n != 0 ){
        print('Mete un valor para la tabla');
        n = double.parse(stdin.readLineSync()!);
        if (n == 0) break;
        for (var i = 1; i <= 50; i++){
            double result = i * n;
            print('$n X $i = $result');
        }
    }
}