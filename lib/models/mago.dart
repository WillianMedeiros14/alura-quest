import 'package:alura_quest/models/combate.dart';
import 'package:alura_quest/models/personagem.dart';
import 'package:alura_quest/models/spells.dart';

class Mago extends Personagem implements Combate {
  int energyPoints;
  String spell;
  static const lifePointsWillBeTakenAway = 10;
  Map<int, MapEntry<Spells, int>> _spells;

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
  )   : _spells = {},
        super(name, race, 'Mago', age, height, lifePoints, powerPoints, isMagic,
            skills) {
    updateStatus();
  }

  Map<int, MapEntry<Spells, int>> get spells => _spells;

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

  void addSpell({required Spells spell, required int valueSpell}) {
    int keyId = _spells.isNotEmpty ? _spells.keys.last + 1 : 1;
    _spells[keyId] = MapEntry(spell, valueSpell);
  }

  void updateSpellValue({required int id, Spells? spell, int? newValue}) {
    if (_spells.containsKey(id)) {
      Spells currentSpell = spell ?? _spells[id]!.key;
      int currentValue = newValue ?? _spells[id]!.value;

      _spells[id] = MapEntry(currentSpell, currentValue);
      print('Feitiço com ID $id atualizado.');
    } else {
      print('Feitiço com ID $id não encontrado.');
    }
  }

  void showAllSpells() {
    print('Todos os Feitiços:');
    _spells.forEach((id, entry) {
      print(
          'ID: $id, Tipo: ${entry.key.spell}, Valor: ${entry.value}, Descrição: ${entry.key.description}');
    });
  }
}
