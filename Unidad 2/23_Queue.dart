class BMW {
  String modelo;
  int anio;
  int caballos;

  BMW(this.modelo, this.anio, this.caballos);

  @override
  String toString() {
    return "BMW $modelo ($anio) - $caballos HP";
  }
}

class ColaBMW {
  List<BMW?> cola;
  int capacidad;
  int frente = 0;
  int finalCola = -1;
  int elementos = 0;

  ColaBMW(this.capacidad) : cola = List.filled(capacidad, null);

  bool empty() {
    return elementos == 0;
  }

  bool full() {
    return elementos == capacidad;
  }

  void enqueue(BMW auto) {
    if (!full()) {
      finalCola++;
      cola[finalCola] = auto;
      elementos++;
      print("Auto agregado: $auto");
    } else {
      print("La cola esta llena");
    }
  }

  BMW? dequeue() {
    if (!empty()) {
      BMW? auto = cola[frente];
      frente++;
      elementos--;
      return auto;
    } else {
      print("La cola esta vacia");
      return null;
    }
  }

  BMW? front() {
    if (!empty()) {
      return cola[frente];
    } else {
      print("La cola esta vacia");
      return null;
    }
  }
}

void main() {
  ColaBMW cola = ColaBMW(3);

  cola.enqueue(BMW("M3 CSL", 2023, 550));
  cola.enqueue(BMW("X6 M50i", 2022, 523));
  cola.enqueue(BMW("M5 Competition", 2023, 617));

  print("Primer auto en la cola: ${cola.front()}");

  print("Sale de la cola: ${cola.dequeue()}");

  print("Nuevo frente: ${cola.front()}");
}
