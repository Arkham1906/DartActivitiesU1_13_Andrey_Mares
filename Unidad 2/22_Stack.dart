class Libro {
  String titulo;
  String autor;

  Libro(this.titulo, this.autor);

  @override
  String toString() {
    return "Libro: $titulo - $autor";
  }
}

class Pila {
  List<Libro> _pila = [];
  int capacidad;

  Pila(this.capacidad);

  bool empty() {
    return _pila.isEmpty;
  }

  bool full() {
    return _pila.length == capacidad;
  }

  void push(Libro libro) {
    if (!full()) {
      _pila.add(libro);
      print("Elemento agregado: $libro");
    } else {
      print("La pila está llena");
    }
  }

  Libro? pop() {
    if (!empty()) {
      return _pila.removeLast();
    } else {
      print("La pila esta vacia");
      return null;
    }
  }

  Libro? top() {
    if (!empty()) {
      return _pila.last;
    } else {
      print("La pila está vacia");
      return null;
    }
  }
}

void main() {
  Pila pila = Pila(3);

  pila.push(Libro("1984", "George Orwell"));
  pila.push(Libro("Dune", "Frank Herbert"));
  pila.push(Libro("Fundacion", "Isaac Asimov"));

  print("Top: ${pila.top()}");

  print("Pop: ${pila.pop()}");

  print("Top despues de pop: ${pila.top()}");
}
