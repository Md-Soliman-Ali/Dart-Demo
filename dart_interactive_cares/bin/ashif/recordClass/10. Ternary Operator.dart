void main() {
  int age = 15;
  String value;

  if (age > 18) {
    print("you can get NID card!");
  } else {
    print("you have to wait!");
  }

  age > 18 ? print("you can get NID card!") : print("you have to wait!");
  value = age > 18 ? "you can get NID card!" : "you have to wait!";
  print(value);
}
