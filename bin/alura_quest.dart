
void main() {
  String name = "Willian Medeiros,";
  String race = "Humano";
  String classUser = "Guerreiro";
  int age = 17;
  double height = 1.80;
  int lifePoints = 100;
  bool isMagic = true;

 List<String> skills = ['Furtividade', "Cura", "Magia de Fogo"];


  String infoUser = 'Meu nome é ${name} '
      'com atlura de ${height}, '
      '${race} ${age >= 18 ? "maior de idade" : "menor de idade"}, '
      'da classe de ${classUser}, '
      'e ${isMagic ? "sou" : "não sou"} mágico.\n'
      'Possuo ${lifePoints} de pontos de vida.'
  ;


  print(infoUser);
}
