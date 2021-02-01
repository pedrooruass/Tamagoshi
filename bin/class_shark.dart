import 'class_animal.dart';

class Shark extends Animal {
  int nivelDePerigo = 0;

  Shark({this.nivelDePerigo, oqCome, tipoDePele, nome})
      : super(oqCome: oqCome, tipoDePele: tipoDePele, nome: nome);

  void furia(String nomeAnimal) {
    switch (nivelDePerigo) {
      case 1:
        print("Nivel 1) o $nomeAnimal esta feliz!");
        break;

      case 2:
        print("Nivel 2) o $nomeAnimal nao esta perigoso !");
        break;

      case 3:
        print("Nivel 3) o $nomeAnimal ainda nao esta perigoso !");
        break;

      case 4:
        print("Nivel 4) o $nomeAnimal esta normal!");
        break;

      case 5:
        print("Nivel 5) o $nomeAnimal esta ficando com fome!");
        break;

      case 6:
        print("Nivel 6) o $nomeAnimal esta comecando a ficar perigoso!");
        break;

      case 7:
        print("Nivel 7) o $nomeAnimal esta perigoso!");
        break;

      case 8:
        print("Nivel 8) o $nomeAnimal esta muito perigoso!");
        break;

      case 9:
        print(
            "Nivel 9) o $nomeAnimal esta te procurando, e melhor voce fugir!");
        break;

      case 10:
        print(
            "Nivel 10) o $nomeAnimal te achou, diga suas ultimas palavras!!");
        break;

      default:
        print("nivel invalido");
        break;
    }
  }

  void comer() {
    print("nhami nhami esta uma delicia essa comida!!");

    if (nivelDePerigo == 1) {
      nivelDePerigo += 1;
    } else if (nivelDePerigo == 10) {
      nivelDePerigo -= 1;
    } else {
      nivelDePerigo -= 1;
    }
  }
}