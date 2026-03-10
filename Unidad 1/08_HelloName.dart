import 'dart:io';

void main() {
    stdout.write('Cual es tu nombre? ');
    String? nombre = stdin.readLineSync();

    print('tu name es: $nombre!');
}