import 'dart:io';
import 'package:dart_console/dart_console.dart';

import 'class_cat.dart';
import 'class_dog.dart';
import 'class_shark.dart';

// todos
var console = Console();
var resultadoNome;
int escolhaTamagoshiConvertida;
String nomeAnimal;
String oqAnimalCome;
int metodoEscolhidoConvertido;
String jogarNovamente;
String peleAnimal;
String qualPeleAnimal;
int nivelConvertido;
// tubarao
Shark tubarao = Shark(
    nivelDePerigo: nivelConvertido,
    oqCome: oqAnimalCome,
    tipoDePele: qualPeleAnimal,
    nome: nomeAnimal);

// cachorro
String racaCachorro;
Dog cachorro = Dog(
    raca: racaCachorro,
    nivelFofura: nivelConvertido,
    oqCome: oqAnimalCome,
    tipoDePele: qualPeleAnimal,
    nome: nomeAnimal);

// gata
Cat gata = Cat(
    nivelDeBipolaridade: nivelConvertido,
    oqCome: oqAnimalCome,
    tipoDePele: qualPeleAnimal,
    nome: nomeAnimal);

void main() {
  while (escolhaTamagoshiConvertida == null) {
    print("Seja bem vindo ao tamagoshi!!");
    print("escolha seu tamagoshi (1) Tubarao, (2) Cachorro e (3) Gata:  ");
    String escolhaTamagoshi = stdin.readLineSync();
    escolhaTamagoshiConvertida = int.tryParse(escolhaTamagoshi);
    console.clearScreen();
    if (escolhaTamagoshiConvertida == null ||
        escolhaTamagoshiConvertida > 3 ||
        escolhaTamagoshiConvertida < 1) {
      print("colocar valor valido seu acefalo!!");
      escolhaTamagoshiConvertida = null;
    }
  }

// se for 1 apresentar tubarao se for 2 cachorro e etc, dps dar ao usuario a chance de usar os metodos

// verifica se for tubarao
  if (escolhaTamagoshiConvertida == 1) {
// escolhe o nome
    print("MUITO BEM ESCOLHIDO, VAMOS CONFIGURAR O SEU TUBARAO!!");
    while (nomeAnimal == null) {
      print("Escolha o nome do seu Tubarao:  ");
      nomeAnimal = stdin.readLineSync();
      console.clearScreen();
      if (!tubarao.validaNullVazioNome(nomeAnimal)) {
        print("Inserir um valor valido!!");
        nomeAnimal = null;
      }
    }
// ecolhe o nivel de perigo
    while (nivelConvertido == null) {
      print("E qual vai ser o nivel de perigo do $nomeAnimal, de 1 a 10");
      String nivelPerigo = stdin.readLineSync();
      nivelConvertido = int.tryParse(nivelPerigo);
      console.clearScreen();
      if (nivelConvertido == null ||
          nivelConvertido > 10 ||
          nivelConvertido < 1) {
        print("o seu jegue coloca um nivel valido !!");
        nivelConvertido = null;
      } else {
        tubarao.nivelDePerigo = nivelConvertido;
      }
    }

// oque ele come
    // while (oqTubaraoCome == null) {
    //   print("o $nomeAnimal e carnivoro, onivoro ou herbivoro? ");
    //   alimentoTubarao = stdin.readLineSync().toLowerCase();
    //   console.clearScreen();
    //   if (alimentoTubarao == "carnivoro") {
    //     oqTubaraoCome = "carne";
    //   } else if (alimentoTubarao == "onivoro") {
    //     oqTubaraoCome = "tudo";
    //   } else if (alimentoTubarao == "herbivoro") {
    //     oqTubaraoCome = "vegetais";
    //   } else {
    //     print("colocar um valor valido");
    //     oqTubaraoCome = null;
    //   }
    // }
// TODO fazer o mesmo em todos
    while (oqAnimalCome == null) {
      print("o $nomeAnimal e carnivoro, onivoro ou herbivoro? ");
      oqAnimalCome = stdin.readLineSync().toLowerCase();
      console.clearScreen();
      tubarao.oqCome = oqAnimalCome;
      if (!tubarao.validaNullVazioOqCome(oqAnimalCome)) {
        print("Inserir um valor valido!!");
        oqAnimalCome = null;
      }
    }

// qual a pele
    while (peleAnimal == null) {
      print("Qual dessas peles (penas,pele,pelos,escamas) o $nomeAnimal tem? ");
      peleAnimal = stdin.readLineSync().toLowerCase();
      console.clearScreen();
      if (peleAnimal == "penas") {
        qualPeleAnimal = "penas";
      } else if (peleAnimal == "pele") {
        qualPeleAnimal = "pele";
      } else if (peleAnimal == "escamas") {
        qualPeleAnimal = "escamas";
      } else if (peleAnimal == "pelos") {
        qualPeleAnimal = "pelos";
      } else {
        print("colocar uma pele valida");
        peleAnimal = null;
      }
    }
    // tubarao configurado

    while (metodoEscolhidoConvertido == null) {
      print(
          "gostaria de (1) ver o nivel de furia do $nomeAnimal,(2) verificar o que ele come ou (3) dar comida pra ele? ");
      String metodoEscolhido = stdin.readLineSync();
      metodoEscolhidoConvertido = int.tryParse(metodoEscolhido);
      console.clearScreen();
      if (metodoEscolhidoConvertido == null ||
          metodoEscolhidoConvertido > 3 ||
          metodoEscolhidoConvertido < 1) {
        print("colocar uma opcao valida!!");
        metodoEscolhidoConvertido = null;
      } else {
        switch (metodoEscolhidoConvertido) {
          case 1:
            tubarao.furia(nomeAnimal);
            break;

          case 2:
            tubarao.descobreAlimento(nomeAnimal);
            break;

          case 3:
            tubarao.comer();
            break;
        }

        // faz pergunta se quer jogar denovo
        // faz pergunta se quer jogar denovo
        while (jogarNovamente == null) {
          print("Quer de brincar novamente com a $nomeAnimal? (s/n) ");
          jogarNovamente = stdin.readLineSync().toLowerCase();
          console.clearScreen();
          if (jogarNovamente == "s") {
            // so falta ver oque fazer qnd for sim
            metodoEscolhidoConvertido = null;
          } else if (jogarNovamente == "n") {
            break;
          } else {
            print("Colocar um valor valido!");
            jogarNovamente = null;
          }
        }
        jogarNovamente = null;
      }
    }
  }

//  cachorro
  if (escolhaTamagoshiConvertida == 2) {
// escolhe o nome
    print("MUITO BEM ESCOLHIDO, VAMOS CONFIGURAR O SEU CACHORRO!!");
    while (nomeAnimal == null) {
      print("Escolha o nome do seu Cachorro:  ");
      nomeAnimal = stdin.readLineSync();
      console.clearScreen();
      if (!cachorro.validaNullVazioNome(nomeAnimal)) {
        print("Inserir um valor valido!!");
        nomeAnimal = null;
      }
    }
// escolhe raca

// TODO fazer verificao do discord e fazer as mesmas coisas do tubarao e na gata
// ja fiz tudo so falta entender e fazer a verificacao do discord que ja esta em processo

    while (racaCachorro == null) {
      print("Boa agora escolha a raca do $nomeAnimal: ");
      racaCachorro = stdin.readLineSync();
      console.clearScreen();
      // se for false
      if (!cachorro.validaNullVazioRaca(racaCachorro)) {
        print("Inserir um valor valido!!");
        racaCachorro = null;
      }
    }
// ecolhe o nivel de fofura
    while (nivelConvertido == null) {
      print("E qual vai ser o nivel de fofura do $nomeAnimal, de 1 a 10");
      String nivelFofura = stdin.readLineSync();
      nivelConvertido = int.tryParse(nivelFofura);
      console.clearScreen();
      if (nivelConvertido == null ||
          nivelConvertido > 10 ||
          nivelConvertido < 1) {
        print("o seu jegue coloca um nivel valido !!");
        nivelConvertido = null;
      }else{
        cachorro.nivelFofura = nivelConvertido;
      }
    }

// oque ele come
    while (oqAnimalCome == null) {
      print("o $nomeAnimal e carnivoro, onivoro ou herbivoro? ");
      oqAnimalCome = stdin.readLineSync().toLowerCase();
      console.clearScreen();
      if (!cachorro.validaNullVazioOqCome(oqAnimalCome)) {
        print("Inserir um valor valido!!");
        oqAnimalCome = null;
      } else {
        cachorro.oqCome = oqAnimalCome;
      }
    }
// qual a pele
    while (peleAnimal == null) {
      print("Qual dessas peles (penas,pele,pelos,escamas) o $nomeAnimal tem? ");
      peleAnimal = stdin.readLineSync().toLowerCase();
      console.clearScreen();
      if (peleAnimal == "penas") {
        qualPeleAnimal = "penas";
      } else if (peleAnimal == "pele") {
        qualPeleAnimal = "pele";
      } else if (peleAnimal == "escamas") {
        qualPeleAnimal = "escamas";
      } else if (peleAnimal == "pelos") {
        qualPeleAnimal = "pelos";
      } else {
        print("colocar uma pele valida");
        peleAnimal = null;
      }
    }
    // cachorro configurado

    while (metodoEscolhidoConvertido == null) {
      print(
          "gostaria de (1) ver o nivel de Fofura do $nomeAnimal,(2) verificar o que ele come, (3) levar ele pra pessear ou (4) fazer ele latir? ");
      String metodoEscolhido = stdin.readLineSync();
      metodoEscolhidoConvertido = int.tryParse(metodoEscolhido);
      console.clearScreen();
      if (metodoEscolhidoConvertido == null ||
          metodoEscolhidoConvertido > 4 ||
          metodoEscolhidoConvertido < 1) {
        print("colocar uma opcao valida!!");
        metodoEscolhidoConvertido = null;
      } else {
        switch (metodoEscolhidoConvertido) {
          case 1:
            cachorro.fofura(nomeAnimal);
            break;

          case 2:
            cachorro.descobreAlimento(nomeAnimal);
            break;

          case 3:
            cachorro.passear();
            break;

          case 4:
            cachorro.latir();
            break;
        }
        // faz pergunta se quer jogar denovo
        // faz pergunta se quer jogar denovo
        while (jogarNovamente == null) {
          print("Quer de brincar novamente com o $nomeAnimal? (s/n) ");
          jogarNovamente = stdin.readLineSync().toLowerCase();
          console.clearScreen();
          if (jogarNovamente == "s") {
            metodoEscolhidoConvertido = null;
          } else if (jogarNovamente == "n") {
            break;
          } else {
            print("Colocar um valor valido!");
            jogarNovamente = null;
          }
        }
        jogarNovamente = null;
      }
    }
  }

  /// TODO fazer o mesmo que fiz com o tubarao com s outros pets, e criar o gata.
  // ja fiz com o cachorro agora falta cirar a gata e fazer o mesmo processo dos outros pets
  // ja criei a gata e fiz todo o processo e agora so falta criar a opcao de metodos para todos os pets
  // falta o clear console e posso fazer um print bonitinho

// gata
  if (escolhaTamagoshiConvertida == 3) {
// escolhe o nome
    print("MUITO BEM ESCOLHIDO, VAMOS CONFIGURAR A SUA GATA!!");
    while (nomeAnimal == null) {
      print("Escolha o nome da sua Gata:  ");
      nomeAnimal = stdin.readLineSync();
      console.clearScreen();
      if (!gata.validaNullVazioNome(nomeAnimal)) {
        print("Inserir um valor valido!!");
        nomeAnimal = null;
      }
    }

// ecolhe o nivel de bipolaridade
    while (nivelConvertido == null) {
      print("E qual vai ser o nivel de Bipolaridade da $nomeAnimal, de 1 a 10");
      String nivelBipolaridade = stdin.readLineSync();
      nivelConvertido = int.tryParse(nivelBipolaridade);
      console.clearScreen();
      if (nivelConvertido == null ||
          nivelConvertido > 10 ||
          nivelConvertido < 1) {
        print("o seu jegue coloque um nivel valido !!");
        nivelConvertido = null;
      } else {
        gata.nivelDeBipolaridade = nivelConvertido;
      }
    }
// ///////////
// falta validar essa merda d cima e validar o metodo de metodo ver o pq ta dando erro
// arrumei essa buceta so falra a de baixo

// oque ela come
    while (oqAnimalCome == null) {
      print("a $nomeAnimal e carnivora, onivora ou herbivora? ");
      oqAnimalCome = stdin.readLineSync().toLowerCase();
      console.clearScreen();
      gata.oqCome = oqAnimalCome;
      if (!gata.validaNullVazioOqCome(oqAnimalCome)) {
        print("Inserir um valor valido!!");
        oqAnimalCome = null;
      }
    }
// qual a pele
    while (peleAnimal == null) {
      print("Qual dessas peles (penas,pele,pelos,escamas) a $nomeAnimal tem? ");
      peleAnimal = stdin.readLineSync().toLowerCase();
      console.clearScreen();
      if (peleAnimal == "penas") {
        qualPeleAnimal = "penas";
      } else if (peleAnimal == "pele") {
        qualPeleAnimal = "pele";
      } else if (peleAnimal == "escamas") {
        qualPeleAnimal = "escamas";
      } else if (peleAnimal == "pelos") {
        qualPeleAnimal = "pelos";
      } else {
        print("colocar uma pele valida");
        peleAnimal = null;
      }
    }
  }
  // gata configurada

// console clear
  while (metodoEscolhidoConvertido == null) {
    print(
        "gostaria de (1) ver o nivel de bipolaridade da $nomeAnimal,(2) verificar o que ela come ou (3) dar comida pra ela? ");
    String metodoEscolhido = stdin.readLineSync();
    metodoEscolhidoConvertido = int.tryParse(metodoEscolhido);
    console.clearScreen();
    if (metodoEscolhidoConvertido == null ||
        metodoEscolhidoConvertido > 3 ||
        metodoEscolhidoConvertido < 1) {
      print("colocar uma opcao valida!!");
      metodoEscolhidoConvertido = null;
    } else {
      switch (metodoEscolhidoConvertido) {
        case 1:
          gata.bipolaridade(nomeAnimal);
          break;

        case 2:
          gata.descobreAlimento(nomeAnimal);
          break;

        case 3:
          gata.buchinChei();
          break;
      }

      // faz pergunta se quer jogar denovo
      // faz pergunta se quer jogar denovo
      while (jogarNovamente == null) {
        print("Quer de brincar novamente com a $nomeAnimal? (s/n) ");
        jogarNovamente = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (jogarNovamente == "s") {
          // so falta ver oque fazer qnd for sim
          metodoEscolhidoConvertido = null;
        } else if (jogarNovamente == "n") {
          break;
        } else {
          print("Colocar um valor valido!");
          jogarNovamente = null;
        }
      }
      jogarNovamente = null;
    }
  }
  // print("--------------------------------------");
}
