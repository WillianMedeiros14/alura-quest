import 'package:alura_quest/models/personagem.dart';

class Guerreiro extends Personagem {
  String arm;
  String combatStyle; 

  Guerreiro(
    String name,
    String race,
    String classUser,
    int age,
    double height,
    int lifePoints,
    int powerPoints,
    bool isMagic,
    List<String> skills,
    this.arm,
    this.combatStyle,
  ) : super(name, race,classUser, age, height, lifePoints, powerPoints, isMagic, skills);
 
  void atacar() {
    print('$name ataca com $arm usando o estilo de combate: $combatStyle!');
  }

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Arma: $arm');
    print('Estilo de Combate: $combatStyle');
    print('===========================');
  }
}