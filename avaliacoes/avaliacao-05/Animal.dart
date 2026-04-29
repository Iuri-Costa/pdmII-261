abstract class Animal {
  String nome;

  Animal(this.nome);

  void falar(); // método abstrato

  void info() {
    print("Animal: $nome");
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void falar() {
    print("$nome diz: Au au");
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void falar() {
    print("$nome diz: Miau");
  }
}

void main() {
  List<Animal> animais = [
    Cachorro("Rex"),
    Gato("Mimi"),
  ];

  for (var animal in animais) {
    animal.info();
    animal.falar();
    print("-----");
  }
}