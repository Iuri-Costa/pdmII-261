import 'dart:convert';

class Dependente {
  String _nome;

  Dependente(this._nome);

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  String _nome;
  List<Dependente> _dependentes;

  Funcionario(this._nome, this._dependentes);

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes,
    };
  }
}

class EquipeProjeto {
  String _nomeProjeto;
  List<Funcionario> _funcionarios;

  EquipeProjeto(this._nomeProjeto, this._funcionarios);

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios,
    };
  }
}

void main() {
  var d1 = Dependente("Ana");
  var d2 = Dependente("Carlos");
  var d3 = Dependente("Maria");

  var f1 = Funcionario("João", [d1, d2]);
  var f2 = Funcionario("Pedro", [d3]);

  var equipe = EquipeProjeto("Sistema X", [f1, f2]);

  print(jsonEncode(equipe));
}