main() {
  int number1 = 10;
  int number2 = 20;
  String number3 = "30";

  print("Sum: ${(number1 + int.parse(number3))}"); // convert string to int
  print("Sub: ${(number1 - number2)}");
  print("Multi: ${(number1 * number2)}");
  print("Div: ${(number2 / number1)}");
}
