import 'dart:io';

void main() {
    stdout.write('whats ur name? ');
    String? nombre = stdin.readLineSync();
    stdout.write('whats ur lastname? ');
    String? lnombre = stdin.readLineSync();
    stdout.write('whats ur middlename? ');
    String? mnombre = stdin.readLineSync();
    print('tu name completo es: $nombre $mnombre $lnombre!');
}