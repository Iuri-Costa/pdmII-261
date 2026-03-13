class Pilha {
  List<int> elementos = [];

  void empilhar(int valor) {
    elementos.add(valor);
    print("$valor foi empilhado.");
  }

  void desempilhar() {
    if (elementos.isEmpty) {
      print("A pilha está vazia.");
    } else {
      int removido = elementos.removeLast();
      print("$removido foi desempilhado.");
    }
  }

  void mostrarTopo() {
    if (elementos.isEmpty) {
      print("A pilha está vazia.");
    } else {
      print("Topo da pilha: ${elementos.last}");
    }
  }

  void mostrarElementos() {
    if (elementos.isEmpty) {
      print("A pilha está vazia.");
    } else {
      print("Elementos da pilha: $elementos");
    }
  }
}
