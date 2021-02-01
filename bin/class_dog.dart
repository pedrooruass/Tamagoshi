



import 'class_animal.dart';

class Dog extends Animal {
  String raca;
  int nivelFofura;

  Dog({this.raca, this.nivelFofura, oqCome, tipoDePele, nome})
      : super(oqCome: oqCome, tipoDePele: tipoDePele, nome: nome);

  void latir() {
    print("AU!! AU!!");
  }

  void fofura(String nomeAnimal) {
    switch (nivelFofura) {
      case 1:
        print("Nivel 1) o $nomeAnimal esta muito bravo!");
        break;

      case 2:
        print("Nivel 2) o $nomeAnimal esta bem bravo!");
        break;

      case 3:
        print("Nivel 3) o $nomeAnimal esta bravo!");
        break;

      case 4:
        print("Nivel 4) o $nomeAnimal esta ficando bravo!");
        break;

      case 5:
        print("Nivel 5) o $nomeAnimal esta normal!");
        break;

      case 6:
        print("Nivel 6) o $nomeAnimal esta ficando fofo!");
        break;

      case 7:
        print("nivel 7) o $nomeAnimal esta fofo!");
        break;

      case 8:
        print("Nivel8) o $nomeAnimal esta bem bravo!");
        break;

      case 9:
        print("Nivel 9) o $nomeAnimal esta muito fofo!");
        break;

      case 10:
        print("Nivel 10) o $nomeAnimal animal mais fofo do mundoo!!");
        break;

      default:
        print("nivel invalido");
        break;
    }
  }

  void passear() {
    print("uhuuu to passeando!!");
    if (nivelFofura == 10) {
      nivelFofura = 10;
    } else {
      nivelFofura += 1;
    }
  }

  bool validaNullVazioRaca(String racaCachorro) {
    int resultadoRaca = int.tryParse(racaCachorro);
    if (resultadoRaca == null && racaCachorro.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}