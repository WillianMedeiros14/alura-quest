import 'package:alura_quest/models/combate.dart';
import 'package:alura_quest/models/personagem.dart';
import 'package:alura_quest/models/spells.dart';

class Mago extends Personagem implements Combate {
  int energyPoints;
  String spell;
  static const lifePointsWillBeTakenAway = 10;
  Map<int, MapEntry<Spells, int>> spells;

  Mago(
    String name,
    String race,
    int age,
    double height,
    int lifePoints,
    int powerPoints,
    bool isMagic,
    List<String> skills,
    this.energyPoints,
    this.spell,
  )   : spells = {},
        super(name, race, 'Mago', age, height, lifePoints, powerPoints, isMagic,
            skills) {
    updateStatus();
  }

  void castSpell() {
    if (energyPoints > 0) {
      print('$name lança o feitiço: $spell!');
      energyPoints--;
      print('Pontos de Energia restantes: $energyPoints');
    } else {
      print('$name não tem energia suficiente para lançar o feitiço.');
    }
  }

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Pontos de Energia: $energyPoints');
    print('Feitiço: $spell');
    print('===========================');
  }

  @override
  void attack(Personagem target) {
    print('$name ataca ${target.name} com magia!');
    target.lifePoints -= lifePointsWillBeTakenAway;
    print(
        '${target.name} perdeu $lifePointsWillBeTakenAway pontos de vida, restando ${target.lifePoints}');
    if (target.lifePoints <= 0) {
      print('${target.name} foi derrotado!');
    }
  }

  addSpell({required Spells spell, required int valueSpell}) {
    int keyId = spells.isNotEmpty ? spells.keys.last + 1 : 1;
    spells[keyId] = MapEntry(spell, valueSpell);
  }

  void showAllSpells() {
    print('Todos os Feitiços:');
    spells.forEach((id, entry) {
      print(
          'ID: $id, Tipo: ${entry.key.spell}, Valor: ${entry.value}, Descrição: ${entry.key.description}');
    });
  }
}
