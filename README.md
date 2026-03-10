# DartActivitiesU1_13_Andrey_Mares

> Colección de actividades prácticas desarrolladas en **Dart**, organizadas por unidades temáticas. Cada ejercicio refuerza conceptos fundamentales de programación desde cero hasta estructuras de datos avanzadas.

---

## 📚 Tabla de Contenidos

- [Unidad 1 — Fundamentos de Dart](#-unidad-1--fundamentos-de-dart)
- [Unidad 2 — Recursividad y Estructuras de Datos](#-unidad-2--recursividad-y-estructuras-de-datos)

---

## 🟢 Unidad 1 — Fundamentos de Dart

Los programas del numero 01 hasya el 19.

---

### 01 · Hola Mundo `01_HolaMundo.dart`

Imprime `Hello, World!` en consola usando la función `print()`.

```dart
main() {
  print('Hello, World!');
}
```

---

### 02 · Tipos de Datos `02_DataTypes.dart`

Exploración completa de los tipos de datos en Dart:

| Tipo | Ejemplo |
|------|---------|
| `int` / `double` | Enteros y decimales, incluyendo variables `late` y nullable |
| `String` | Cadenas simples, multilínea e interpolación con `$variable` |
| `bool` | Valores `true` / `false` con negación |
| `List` | Arreglos tipados y dinámicos |
| `Set` | Conjuntos sin duplicados |
| `Map` | Diccionarios clave-valor con `addAll()` |

---

### 03 · Final y Const `03_FinalConst.dart`

Diferencia entre `var`, `final` y `const`:

- **`var`** — variable mutable sin tipo explícito.
- **`final`** — referencia inmutable, pero el contenido puede cambiar (e.g. una lista).
- **`const`** — valor completamente inmutable en tiempo de compilación.

---

### 04 · Comentarios `04_Coments.dart`

Demuestra los tres tipos de comentarios en Dart:

```dart
// Comentario de una línea
/* Comentario multilínea */
/// Comentario de documentación (DocComment)
```

Incluye una función documentada con `///` que recibe parámetros `[numero]` y `[nombre]`.

---

### 05 · Operadores Matemáticos `05_MathOperators.dart`

Recorre todos los operadores aritméticos de Dart con ejemplos comentados:

`+` `-` `*` `/` `%` `~/` negación `-a` incremento `++` decremento `--` y asignación compuesta `+=` `-=`

---

### 06 · Operadores Condicionales `06_Operators.dart`

Uso del operador `??=` (null-coalescing assignment) y el operador ternario `? :` para tomar decisiones en una sola línea.

```dart
b ??= 20;                        // asigna solo si b es null
String r = (d > 25) ? 'sí' : 'no';
```

---

### 07 · Lectura de Consola `07_Read.dart`

Primera práctica con `stdin.readLineSync()`. Lee un nombre y un número desde la terminal e imprime mensajes personalizados con `stdout.writeln()` y `stdout.write()`.

---

### 08 · Saludo Personalizado `08_HelloName.dart`

Lee el nombre del usuario y lo saluda con interpolación de strings. Versión simplificada del ejercicio anterior.

---

### 09 · Suma de Dos Números `09_Sum.dart`

Solicita dos enteros al usuario, los suma y muestra el resultado. Usa `int.parse()` para convertir la entrada de texto a número.

---

### 10 · Concatenación de Nombre `10_Concat.dart`

Lee nombre, apellido y segundo nombre por separado, luego los imprime como nombre completo usando interpolación de strings.

---

### 11 · If Básico `11_IfBasic.dart`

Compara dos números ingresados por el usuario con `if / else if / else` para determinar cuál es mayor o si son iguales.

---

### 12 · If Anidado — Ordenamiento `12_Nested.dart`

Recibe cuatro números y los ordena de **mayor a menor** mediante comparaciones anidadas e intercambios con variable auxiliar (`aux`/`temp`). Imprime el resultado ordenado.

---

### 13 · Menú de Áreas y Volúmenes `13_Menus.dart`

Menú interactivo con `while` + `if/else` + `switch` que permite:

- **Calcular áreas** → Círculo, Triángulo, Rectángulo
- **Calcular volúmenes** → Esfera, Pirámide, Cubo

Usa `dart:math` para `pi` y `pow()`.

---

### 15 · Conversor de Calificaciones `15_Callificacion.dart`

Convierte calificaciones del sistema americano (`A+`, `A`, `B`, `C`, `D`, `F`) al sistema numérico mexicano (10–5). Valida la entrada con un bucle y búsqueda en listas paralelas.

---

### 14 · Tabla de Multiplicar `14_TablaMultiplicar.dart`

Genera la tabla de multiplicar de cualquier número hasta el 50. Usa un `while` externo para repetir con diferentes valores hasta que el usuario ingrese `0`.

---

### 16 · Suma Acumulativa `16_Sumas.dart`

Suma todos los números que el usuario ingrese en un bucle `while`, deteniéndose cuando se ingresa `0`. Imprime el total acumulado.

---

### 17 · Labels (Etiquetas de Control) `17_Labels.dart`

Demuestra el uso de etiquetas (`outter:`) para romper un ciclo externo desde adentro de un ciclo anidado con `break outter`, algo no posible con un `break` simple.

---

### 18a · Tabla sin Función `18a_Funciones.dart`

Genera la tabla de multiplicar (del 0 al 9) de un número dado, directamente dentro de `main()` sin usar funciones auxiliares.

---

### 18b · Tabla con Función `18b_Funciones.dart`

Misma lógica que `18a`, pero refactorizada con una función `tabla(int x)` separada. Ilustra el principio de separación de responsabilidades.

---

### 19 · Verificador de Primos `19_Primos.dart`

Verifica si un número es primo mediante una función `chk(int n)` que itera divisores hasta `n ~/ 2`. Maneja casos especiales (≤ 1).

---

## 🔴 Unidad 2 — Recursividad y Estructuras de Datos

Funciones recursivas, implementación de pilas y colas, manejo de excepciones y proyecto integrador.

---

### 20a · Factorial Iterativo `20a_factorial.dart`

Calcula el factorial de un número con un bucle `for` descendente directamente en `main()`.

---

### 20b · Factorial con Función `20b_factorial.dart`

Separa la lógica en una función `factorial(int n)` que retorna el resultado. Compara con `20a` la ventaja de modularizar el código.

---

### 20c · Factorial Recursivo `20c_factorial.dart`

Implementación recursiva del factorial:

```dart
int factorial(int num) {
  if (num <= 1) return 1;
  return num * factorial(num - 1);
}
```

Caso base: `num <= 1` → retorna `1`.

---

### 21 · Sumatoria Recursiva `21_Sumatoria.dart`

Calcula la sumatoria `1 + 2 + ... + n` de forma recursiva:

```dart
int sumatoria(int num) {
  if (num == 1) return 1;
  return num + sumatoria(num - 1);
}
```

---

### 22 · Pila de Libros (Stack) `22_Stack.dart`

Implementa una **Pila (LIFO)** con capacidad fija usando una clase `Pila<Libro>`:

| Método | Descripción |
|--------|-------------|
| `push()` | Agrega un libro al tope |
| `pop()` | Retira el libro del tope |
| `top()` | Consulta el tope sin eliminarlo |
| `full()` / `empty()` | Verifica estado de la pila |

---

### 23 · Cola de Autos BMW (Queue) `23_Queue.dart`

Implementa una **Cola (FIFO)** con capacidad fija usando la clase `ColaBMW`:

| Método | Descripción |
|--------|-------------|
| `enqueue()` | Agrega un auto al final |
| `dequeue()` | Retira el primer auto |
| `front()` | Consulta el frente sin eliminarlo |
| `full()` / `empty()` | Verifica estado de la cola |

---

### 24 · Try / Catch `24_TyrCatch.dart`

Manejo de excepciones en Dart. La función `factorial(int n)` lanza una excepción personalizada con `throw Exception(...)` cuando recibe un número negativo, y el bloque `try/catch` la intercepta.

```dart
try {
  int resultado = factorial(-5);
} catch (e) {
  print("Error: $e");
}
```

---

### 25 · Sistema de Tickets — Proyecto Grupal `25Grupal.dart`

Proyecto integrador que combina **Cola** y **Pila** en un sistema de soporte técnico con menú interactivo:

| Opción | Función |
|--------|---------|
| `1` Registrar ticket | `enqueue` — agrega al final de la cola |
| `2` Mostrar tickets | Lista todos los tickets activos |
| `3` Atender ticket | `dequeue` — atiende el primero en la fila |
| `4` Deshacer acción | `pop` — revierte la última atención |
| `0` Salir | Termina el programa |

---

