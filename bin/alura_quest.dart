import 'package:alura_quest/models/personagem.dart';

void main() {
  Personagem personagem = Personagem(
    'Aragorn',
    'Humano',
    'Guerreiro',
    30,
    1.85,
    100,
    50,
    false,
    ['Lutar com espada', 'Liderança', 'Rastrear'],
  );

  personagem.exibirFicha();
}
