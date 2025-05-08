/// {} Curly Braces
/// () Parenthesis
/// [] Square Bracket
/// <> Angle Bracket
void main() {
  // Example 1: simple if statement
  int age = 18;

  print('Example 1: simple if statement');
  if (age >= 18) {
    print('You are an adult');
  }

  // Example 2: if with multiple conditions
  int temperature = 25;
  bool isRaining = true;

  print('\nExample 2: if with multiple conditions');
  if (temperature > 20 && isRaining) {
    print('It\'s warm but raining');
  }
}
