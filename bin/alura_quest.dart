import 'package:alura_quest/models/guerreiro.dart';
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

  Guerreiro guerreiroMagico = Guerreiro(
    'Gandalf',
    'Espiritual',
    'Mago',
    150,
    1.80,
    100,
    80,
    true,
    ['Lutar com espada', 'Controle do fogo'],
    'Cajado',
    'Combate Mágico',
  );

  guerreiroMagico.exibirFicha();
  guerreiroMagico.atacar();
}
