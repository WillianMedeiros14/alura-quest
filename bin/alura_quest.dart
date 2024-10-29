import 'package:alura_quest/models/Mago.dart';
import 'package:alura_quest/models/guerreiro.dart';
import 'package:alura_quest/models/life_status.dart';
import 'package:alura_quest/models/spells.dart';

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
    50,
    30,
    true,
    ['Controle do Fogo', 'Iluminar'],
    LifeStatus.vivo,
    5,
    'Fogo Mágico',
  );

  guerreiro1.exibirFicha();
  mago1.exibirFicha();
  mago1.addSpell(spell: Spells.gelo, valueSpell: 20);
  mago1.addSpell(spell: Spells.fogo, valueSpell: 30);
  mago1.addSpell(spell: Spells.relampago, valueSpell: 40);

  mago1.showAllSpells();

  mago1.attack(guerreiro1);
  guerreiro1.updateStatus();
  guerreiro1.attack(mago1);
  mago1.updateStatus();
  guerreiro1.exibirFicha();
  mago1.exibirFicha();
}
