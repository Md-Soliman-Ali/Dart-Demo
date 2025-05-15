void main() {
  // Example 1: Do-while loop with condition
  int number = 1;

  print('Example 1: Do-while loop with condition');
  do {
    if (number % 2 == 0) {
      print('$number is Even');
    } else {
      print('$number is Odd');
    }
    number++;
  } while (number <= 10);
}
