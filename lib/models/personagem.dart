class Personagem {
  String name;
  String race;
  String classUser;
  int age;
  double height;
  int lifePoints;
  int powerPoints;
  bool isMagic;
  List<String> habilidades;

  Personagem(
    this.name,
    this.race,
    this.classUser,
    this.age,
    this.height,
    this.lifePoints,
    this.powerPoints,
    this.isMagic,
    this.habilidades,
  );

  void exibirFicha() {
    print('=== Ficha do Personagem ===');
    print('Nome: $name');
    print('Raça: $race');
    print('Classe: $classUser');
    print('Idade: $age anos');
    print('Altura: ${height.toStringAsFixed(2)} metros');
    print('Pontos de Vida: $lifePoints');
    print('Pontos de Poder: $powerPoints');
    print('Mágico: ${isMagic ? "Sim" : "Não"}');
    print('Habilidades:');
    for (var habilidade in habilidades) {
      print(' - $habilidade');
    }
    print('===========================');
  }
}
