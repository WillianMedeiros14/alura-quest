enum Spells {
  fogo('Feitiço de fogo que causa dano'),
  gelo('Feitiço de gelo que pode congelar inimigos'),
  relampago('Feitiço de relâmpago que causa dano rápido'),
  cura('Feitiço de cura que restaura a vida de um personagem');

  final String description;

  const Spells(this.description);

   String get spell {
    switch (this) {
      case Spells.fogo:
        return 'Fogo';
      case Spells.gelo:
        return 'Gelo';
      case Spells.relampago:
        return 'Relampago';
        case Spells.cura:
        return 'Cura';
    }
  }
}
