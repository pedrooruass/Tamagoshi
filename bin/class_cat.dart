import 'class_animal.dart';

class Cat extends Animal {
  int nivelDeBipolaridade = 0;

  Cat({this.nivelDeBipolaridade, oqCome, tipoDePele, nome})
      : super(oqCome: oqCome, tipoDePele: tipoDePele, nome: nome);

  void bipolaridade(String nomeAnimal) {
    switch (nivelDeBipolaridade) {
      case 1:
        print("Nivel 1) a $nomeAnimal esta feliz!");
        break;

      case 2:
        print("Nivel 2) a $nomeAnimal nao esta feliz !");
        break;

      case 3:
        print("Nivel 3) a $nomeAnimal ainda esta feliz !");
        break;

      case 4:
        print("Nivel 4) a $nomeAnimal nao esta nada feliz!");
        break;

      case 5:
        print("Nivel 5) a $nomeAnimal esta ficando brava!");
        break;

      case 6:
        print("Nivel 6) a $nomeAnimal esta comecando a ficar muito feliz!");
        break;

      case 7:
        print("Nivel 7) a $nomeAnimal esta perigosa!");
        break;

      case 8:
        print("Nivel 8) a $nomeAnimal esta muito alegre!");
        break;

      case 9:
        print(
            "Nivel 9) a $nomeAnimal esta te procurando, e melhor voce fugir!");
        break;

      case 10:
        print("Nivel 10) a $nomeAnimal te achou ele quer seu carinho!!");
        break;

      default:
        print("nivel invalido");
        break;
    }
  }

  void buchinChei() {
    print("to de buchin chei!!");
    if (nivelDeBipolaridade == 1) {
      nivelDeBipolaridade += 1;
    } else if (nivelDeBipolaridade == 10) {
      nivelDeBipolaridade -= 1;
    } else {
      nivelDeBipolaridade += 1;
    }
  }
}