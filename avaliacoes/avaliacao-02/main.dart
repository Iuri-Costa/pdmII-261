import 'Pilha.dart';

void main() {
  Pilha pilha = Pilha();

  pilha.empilhar(10);
  pilha.empilhar(20);
  pilha.empilhar(30);

  pilha.mostrarElementos();

  pilha.mostrarTopo();

  pilha.desempilhar();

  pilha.mostrarElementos();
}
