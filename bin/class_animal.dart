class Animal {
  String tipoDePele;
  String nome;
  String oqCome;

  Animal({this.tipoDePele, this.nome, this.oqCome});

  // metodos

  void descobreAlimento(String nomeAnimal) {
    oqCome = oqCome == "carnivora" ? "carnivoro" : oqCome;
    oqCome = oqCome == "onivora" ? "onivoro" : oqCome;
    oqCome = oqCome == "herbivora" ? "herbivoro" : oqCome;

    if (oqCome == "carnivoro") {
      print("$nomeAnimal gosta de carne!!");
    } else if (oqCome == "onivoro") {
      print("$nomeAnimal gosta de carne e alface!!");
    } else if (oqCome == "herbivoro") {
      print("$nomeAnimal gosta de vegetais!!");
    } else {
      print("voce nao cadastrou");
    }
  }

  bool validaNullVazioNome(String nomeAnimal) {
    int resultadoNome = int.tryParse(nomeAnimal);
    if (resultadoNome == null && nomeAnimal.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool validaNullVazioOqCome(String oqAnimalCome) {
    int resultadoOqAnimalCome = int.tryParse(oqAnimalCome);
    if (resultadoOqAnimalCome == null && oqAnimalCome.isNotEmpty) {
      if (oqAnimalCome == "carnivoro" ||
          oqAnimalCome == "onivoro" ||
          oqAnimalCome == "herbivoro" ||
          oqAnimalCome == "carnivora" ||
          oqAnimalCome == "onivora" ||
          oqAnimalCome == "herbivora") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}