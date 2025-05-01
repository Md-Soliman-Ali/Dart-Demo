void learnFlutter(int days) {
  for (int i = 1; i <= days; i++) {
    print("Learning for $i day!");
  }
}

void main() {
  /// Step: 01
  /*
  for (int i = 1; i <= 10; i++) {
    // print("Hello World: $i");
    if (i == 5) {
      print("Hello World: $i");
      break;
    }
  }
  */

  /// Step: 02
  // learnFlutter(7);

  List<String> fruits = ["Apple", "Mango", "Guava", "Blueberry"];

  /// Step: 03
  /*
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }
  */

  /// Step: 03
  for (String fruit in fruits) {
    print(fruit);
  }

  /// Step: 04
  List<int> winnerNumbers = [5, 14, 17, 18];
  List<int> myTickets = [6, 14, 19, 21];

  for (int myNum in myTickets) {
    // print(myNum);
    for (int winner in winnerNumbers) {
      if (myNum == winner) {
        print("Your Winning Number is: $myNum");
      }
    }
  }
}
