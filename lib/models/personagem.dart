import 'package:alura_quest/models/life_status.dart';

class Personagem {
  String name;
  String race;
  String classUser;
  int age;
  double height;
  int lifePoints;
  int powerPoints;
  bool isMagic;
  List<String> skills;
  LifeStatus? _lifeStatus;

  Personagem(
    this.name,
    this.race,
    this.classUser,
    this.age,
    this.height,
    this.lifePoints,
    this.powerPoints,
    this.isMagic,
    this.skills,
  ) {
    updateStatus();
  }

  LifeStatus get lifeStatus => _lifeStatus!;
  
  void updateStatus() {
    if (lifePoints > 50) {
      _lifeStatus = LifeStatus.vivo;
    } else if (lifePoints > 0) {
      _lifeStatus = LifeStatus.ferido;
    } else {
      _lifeStatus = LifeStatus.derrotado;
    }
  }

  void exibirFicha() {
    print('\n=== Ficha do Personagem ===\n');
    print('Nome: $name');
    print('Raça: $race');
    print('Classe: $classUser');
    print('Idade: $age anos');
    print('Altura: ${height.toStringAsFixed(2)} metros');
    print('Pontos de Vida: $lifePoints');
    print('Pontos de Poder: $powerPoints');
    print('Mágico: ${isMagic ? "Sim" : "Não"}');
    print('Estatus de vida: ${_lifeStatus?.status}');
    print('Habilidades:');
    for (var habilidade in skills) {
      print(' - $habilidade');
    }
    print('===========================');
  }
}
