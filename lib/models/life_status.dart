enum LifeStatus {
  vivo,
  ferido,
  derrotado;

  String get status {
    switch (this) {
      case LifeStatus.vivo:
        return 'Vivo';
      case LifeStatus.ferido:
        return 'Ferido';
      case LifeStatus.derrotado:
        return 'Derrotado';
    }
  }
}
