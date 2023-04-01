//Late circular references

// Definimos una clase `Team`
class Team {
  // Creamos una variable `coach` que debe ser inicializada antes de que se acceda a ella
  late final Coach coach;
}

// Definimos una clase `Coach`
class Coach {
  // Creamos una variable `team` que debe ser inicializada antes de que se acceda a ella
  late final Team team;
}

void main() {
  // Creamos una instancia de `Team`
  final myTeam = Team();
  // Creamos una instancia de `Coach`
  final myCoach = Coach();
  // Asignamos `myCoach` a `coach` en `myTeam`
  myTeam.coach = myCoach;
  // Asignamos `myTeam` a `team` en `myCoach`
  myCoach.team = myTeam;

  // Imprimimos un mensaje para indicar que hemos terminado
  print('All done!');
}
