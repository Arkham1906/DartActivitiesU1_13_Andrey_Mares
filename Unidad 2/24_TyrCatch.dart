int factorial(int n) {
  if (n < 0) {
    throw Exception("No hat factorial de negativos");
  }

  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }

  return resultado;
}

void main() {
  int numero = -5;

  try {
    int resultado = factorial(numero);
    print("El factorial de $numero es $resultado");
  } catch (e) {
    print("Error: $e");
  }
}
