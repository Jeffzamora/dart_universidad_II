//1-Nullable and non-nullable types

int? couldReturnNullButDoesnt() =>
    -3; // Retorna un int nullable (-3) pero nunca retorna null explícitamente
int? couldBeNullButIsnt =
    1; // Declara una variable int nullable que tiene un valor no nulo (1)

void main() {
  //Tipos no nulos
  int a;
  a = 3; // Asigna un valor no nulo a la variable "a"
  print('a es $a.');

  //Tipos nulos
  int? b;
  b = null; // Asigna un valor nulo a la variable "b"
  print('b es $b.');

  //Parámetros de tipo nulos para genéricos
  List<String> aListOfStrings = [
    'uno',
    'dos',
    'tres'
  ]; // Lista de cadenas no nulas
  List<String>? aNullableListOfStrings; // Lista de cadenas nulas
  List<String?> aListOfNullableStrings = [
    'uno',
    null,
    'tres'
  ]; // Lista de cadenas no nulas y nulas

  print('aListOfStrings es $aListOfStrings.');
  print('aNullableListOfStrings es $aNullableListOfStrings.');
  print('aListOfNullableStrings es $aListOfNullableStrings.');

  //Afirmación de nulidad
  List<int?> listThatCouldHoldNulls = [
    2,
    null,
    4
  ]; // Lista de enteros nulos y no nulos

  int c = couldBeNullButIsnt!; // Afirma que "couldBeNullButIsnt" no es nulo
  int d = listThatCouldHoldNulls
      .first!; // Obtiene el primer elemento de la lista y afirma que no es nulo
  int e = couldReturnNullButDoesnt()!
      .abs(); // Obtiene el valor absoluto de la función que retorna un int nullable y afirma que no es nulo

  print('a es $c.');
  print('b es $d.');
  print('c es $e.');
}
