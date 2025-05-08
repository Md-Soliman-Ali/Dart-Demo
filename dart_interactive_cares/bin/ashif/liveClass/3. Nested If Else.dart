void main() {
  // Example 1: Nested if-else with multiple conditions
  int temperature = 25;
  bool isRaining = true;
  bool hasUmbrella = false;

  print('\nExample 1: Nested if-else with multiple conditions');
  if (temperature > 20) {
    if (isRaining) {
      if (hasUmbrella) {
        print('You can go outside with your umbrella');
      } else {
        print('You should stay inside or get an umbrella');
      }
    } else {
      print('It\'s a nice day to go outside');
    }
  } else {
    print('It\'s too cold to go outside');
  }
}
