// 2-The required keyword

// Esta función toma tres argumentos enteros obligatorios (required)
// y devuelve su suma como resultado.
int addThreeValues({
  required int first,
  required int second,
  required int third,
}) {
  return first + second + third;
}

void main() {
  // Aquí se llama a la función addThreeValues y se le pasan tres valores enteros
  // para los argumentos first, second y third, respectivamente.
  final sum = addThreeValues(
    first: 2,
    second: 5,
    third: 3,
  );

  // Imprime la suma de los tres valores enteros pasados a la función.
  print(sum);
}
