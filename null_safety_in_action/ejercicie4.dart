//Null checking

// Función que devuelve la longitud de una cadena de texto
int getLength(String? str) {
  // Verifica si el argumento str es nulo
  if (str == null) {
    return 0; // Retorna 0 si str es nulo
  }

  return str.length; // Retorna la longitud de str si no es nulo
}

void main() {
  print(getLength(
      'This is a string!')); // Imprime la longitud de la cadena de texto
}
