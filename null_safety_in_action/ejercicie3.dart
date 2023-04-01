//3-Type promotion

//Definite assignment
void main() {
  String text;

  if (DateTime.now().hour < 12) {
    text =
        "It's morning! Let's make aloo paratha!"; // si es antes de las 12, mostrará este mensaje
  } else {
    text =
        "It's afternoon! Let's make biryani!"; // si es después de las 12, mostrará este mensaje
  }

  print(text); // imprime el mensaje correspondiente
  print(text.length); // imprime la longitud del mensaje
}
