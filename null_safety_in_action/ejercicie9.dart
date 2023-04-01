//Late and lazy

// Esta función realiza algún cálculo y devuelve un valor
int _computeValue() {
  print('In _computeValue...');

  return 3;
}

// Esta clase almacena una copia en caché de un valor que se computa una vez
class CachedValueProvider {
  late final _cache =
      _computeValue(); // El valor se calcula y se almacena en caché aquí
  int get value =>
      _cache; // El valor en caché se devuelve cuando se accede a `value`
}

void main() {
  print('Calling constructor...');

  // Creamos una instancia de `CachedValueProvider`
  var provider = CachedValueProvider();

  print('Getting value...');

  // Accedemos al valor en caché a través de la propiedad `value`
  print('The value is ${provider.value}!');
}
