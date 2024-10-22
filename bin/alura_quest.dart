import 'package:alura_quest/models/Mago.dart';
import 'package:alura_quest/models/guerreiro.dart';


void main() {
Guerreiro guerreiro1 = Guerreiro(
    'Conan',
    'Humano',
    35,
    1.90,
    100,
    30,
    false,
    ['Lutar com espada', 'Força Bruta'],
    'Espada Longa',
    'Ataque Direto',
  );

  Mago mago1 = Mago(
    'Gandalf',
    'Maya',
    150,
    1.80,
    100,
    80,
    true,
    ['Controle do Fogo', 'Iluminar'],
    5,
    'Fogo Mágico',
  );

  guerreiro1.exibirFicha();
  mago1.exibirFicha();

  mago1.attack(guerreiro1);
  guerreiro1.attack(mago1);
}
