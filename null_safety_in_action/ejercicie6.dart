// Object properties arent promotable

import 'dart:math';

// Factoría para proveer un objeto StringProvider
class StringProvideFactory {
  static StringProvider getProvider() => RandomStringProvider();
}

// Clase base para proveer un string
class StringProvider {
  String? value = 'Hi!';
}

// Clase que extiende la clase base para proveer un string aleatorio
class RandomStringProvider extends StringProvider {
  String? get values => Random().nextBool() ? 'A String' : null;
}

// Función para imprimir un string
void printString(String str) => print(str);

void main() {
  // Se obtiene un proveedor de string aleatorio a través de la factoría
  final provider = StringProvideFactory.getProvider();

  // Se obtiene el string del proveedor
  final str = provider.value;

  // Si el string es nulo, se imprime un mensaje indicando que el valor es nulo
  // Si no es nulo, se imprime el string utilizando la función printString
  if (str == null) {
    print('The value is null');
  } else {
    print('The value is not null. so print it!');
    printString(str);
  }
}
