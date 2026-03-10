import "dart:io";

List<Ticket> colaTickets = [Ticket(id: 1, description: 'Problema 1')];
List<Ticket> pilaAcciones = [];
int contadorId = 1;

class Ticket {
  int id;
  String description;

  Ticket({required this.id, required this.description});
}

// Enqueue ticket
void RegistrarTicket() {
  stdout.write('Ingrese el problema: ');
  String? description = stdin.readLineSync() ?? "Sin Descripción";

  contadorId++;
  Ticket nuevoTicket = Ticket(id: contadorId, description: description);
  colaTickets.add(nuevoTicket);
}

// Dequeue ticket
void AtenderTicket() {
  if (colaTickets.isEmpty) {
    print('No hay tickets en la cola');
    return;
  }

  Ticket ticketAtendido = colaTickets.removeAt(0);
  print(
    'Atendiendo ticket ${ticketAtendido.id}: ${ticketAtendido.description}',
  );

  pilaAcciones.add(colaTickets[0]);
}

// Stack pop
void DeshacerUltimaAccion() {
  if (pilaAcciones.isEmpty) {
    print('No hay acciones para deshacer');
    return;
  }

  Ticket ticketDeshacer = pilaAcciones.removeLast();
  colaTickets.insert(0, ticketDeshacer);
  print(
    'Deshaciendo acción: ${ticketDeshacer.id}: ${ticketDeshacer.description}',
  );
}

// Show tickets
void MostrarSistema() {
  print("Lista de Tickets:");
  for (int i = 0; i < colaTickets.length; i++) {
    print('Ticket ${colaTickets[i].id}: ${colaTickets[i].description}');
  }
}

void main() {
  int response;

  while (true) {
    stdout.writeln('\nIngrese una opción: ');
    print("""
    1. Registrar ticket
    2. Mostrar tickets
    3. Atender ticket
    4. Deshacer opción
    0. Salir""");

    response = int.parse(stdin.readLineSync()!);

    if (response == 0) break;
    // Menu de opciones
    switch (response) {
      case 1:
        RegistrarTicket();
        break;
      case 2:
        MostrarSistema();
        break;
      case 3:
        AtenderTicket();
        break;
      case 4:
        DeshacerUltimaAccion();
        break;
      default:
        print('Opción inválida\n');
        break;
    }
  }
}
