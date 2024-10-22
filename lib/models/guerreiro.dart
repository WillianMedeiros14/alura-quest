import 'package:alura_quest/models/combate.dart';
import 'package:alura_quest/models/personagem.dart';

class Guerreiro extends Personagem implements Combate {
  String arm;
  String combatStyle;
  static const lifePointsWillBeTakenAway = 15;

  Guerreiro(
    String name,
    String race,
    int age,
    double height,
    int lifePoints,
    int powerPoints,
    bool isMagic,
    List<String> skills,
    this.arm,
    this.combatStyle,
  ) : super(name, race, "Guerreiro", age, height, lifePoints, powerPoints,
            isMagic, skills);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Arma: $arm');
    print('Estilo de Combate: $combatStyle');
    print('===========================');
  }

  @override
  void attack(Personagem target) {
    print('$name ataca ${target.name} com $arm!');
    target.lifePoints -= lifePointsWillBeTakenAway;
    print(
        '${target.name} perdeu $lifePointsWillBeTakenAway pontos de vida, restando ${target.lifePoints}');
    if (target.lifePoints <= 0) {
      print('${target.name} foi derrotado!');
    }
  }
}
