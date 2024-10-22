import 'package:alura_quest/models/personagem.dart';

class Mago extends Personagem {
  int energyPoints;
  String spell; 

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
  ) : super(name, race, 'Mago', age, height, lifePoints, powerPoints, isMagic, skills);

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
}
