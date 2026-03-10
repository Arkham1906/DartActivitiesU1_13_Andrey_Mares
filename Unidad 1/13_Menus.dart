import 'dart:io';
import 'dart:math';

void main() {
    while (true) {
        print('\n=== Menú Principal ===');
        print('Calcular Área (1)');
        print('Calcular Volumen (2)');
        print('Salir (3)');
        stdout.write('Seleccione una opción ingresando un número del 1 al 3: ');
        String? opcion = stdin.readLineSync();
        print('\n');

        if (opcion == '1') {
        calcularArea();
        } else if (opcion == '2') {
        calcularVolumen();
        } else if (opcion == '3') {
        print('byee');
        break;
        } else {
        print('opción inválida, intenta de nuevo.');
        }
    }
    }

    void calcularArea() {
    print('\n=== Menú De Áreas ===');
    print('Círculo (1)');
    print('Triángulo (2)');
    print('Rectángulo (3)');
    stdout.write('Selecciona una figura ingresando un número del 1 al 3: ');
    String? figura = stdin.readLineSync();
    print('\n');

    switch (figura) {
        case '1':
        stdout.write('Ingrese el radio (u): ');
        double radio = double.parse(stdin.readLineSync()!);
        double area = pi * pow(radio, 2);
        print('El área del círculo es: $area unidades cuadradas');
        break;

        case '2':
        stdout.write('Ingrese la base (u): ');
        double base = double.parse(stdin.readLineSync()!);
        stdout.write('Ingrese la altura (u): ');
        double altura = double.parse(stdin.readLineSync()!);
        double area = (base * altura) / 2;
        print('El área del triángulo es: $area unidades cuadradas');
        break;

        case '3':
        stdout.write('Ingrese la base (u): ');
        double base = double.parse(stdin.readLineSync()!);
        stdout.write('Ingrese la altura (u): ');
        double altura = double.parse(stdin.readLineSync()!);
        double area = base * altura;
        print('El área del rectángulo es: $area unidades cuadradas');
        break;

        default:
        print('Opción inválida.');
    }
    }

    void calcularVolumen() {
    print('\n=== Menú De Volumen ---');
    print('Esfera (1)');
    print('Pirámide (2)');
    print('Cubo (3)');
    stdout.write('Selecciona una figura ingresando un numero del 1 al 3: ');
    String? figura = stdin.readLineSync();
    print('\n');

    switch (figura) {
        case '1':
        stdout.write('Ingrese el radio (u): ');
        double radio = double.parse(stdin.readLineSync()!);
        double volumen = (4 / 3) * pi * pow(radio, 3);
        print('El volumen de la esfera es: $volumen unidades cúbicas');
        break;

        case '2':
        stdout.write('Ingrese la base (u): ');
        double base = double.parse(stdin.readLineSync()!);
        stdout.write('Ingrese la altura (u): ');
        double altura = double.parse(stdin.readLineSync()!);
        double volumen = (base * base * altura) / 3;
        print('El volumen de la pirámide es: $volumen unidades cúbicas');
        break;

        case '3':
        stdout.write('Ingrese el lado (u): ');
        double lado = double.parse(stdin.readLineSync()!);
        double volumen = pow(lado, 3).toDouble();
        print('El volumen del cubo es: $volumen unidades cúbicas');
        break;

        default:
        print('opción inválida.');
    }
}