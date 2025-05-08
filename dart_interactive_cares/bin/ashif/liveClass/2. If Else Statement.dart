void main() {
  // Example 1: Basic if-else
  int age = 15;

  print('Example 1: Basic if-else');
  if (age >= 18) {
    print('You are an adult');
  } else {
    print('You are a minor');
  }

  // Example 2: if-else with multiple conditions
  int temperature = 25;
  print('\nExample 2: if-else with multiple conditions');

  if (temperature > 30) {
    print('It\'s hot outside');
  } else if (temperature > 20) {
    print('It\'s warm outside');
  } else {
    print('It\'s cold outside');
  }
}
