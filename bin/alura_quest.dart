import 'package:alura_quest/models/Mago.dart';
import 'package:alura_quest/models/guerreiro.dart';
import 'package:alura_quest/models/life_status.dart';

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
    LifeStatus.vivo,
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
    LifeStatus.vivo,
    5,
    'Fogo Mágico',
  );

  guerreiro1.exibirFicha();
  mago1.exibirFicha();

  mago1.attack(guerreiro1);
  guerreiro1.attack(mago1);
}
