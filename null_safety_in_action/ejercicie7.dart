//The late keyword

//Using Late

class Meal {
  late String
      _description; // campo privado que será seteado con la descripción de la comida

  set description(String desc) {
    // setter que actualizará la descripción de la comida
    _description = 'Meal description: $desc';
  }

  String get description =>
      _description; // getter que retornará la descripción de la comida
}

void main() {
  final myMeal = Meal(); // creamos una instancia de Meal
  myMeal.description =
      'Feijoada!'; // actualizamos la descripción de la comida con "Feijoada!"
  print(myMeal.description); // imprimimos la descripción de la comida
}
