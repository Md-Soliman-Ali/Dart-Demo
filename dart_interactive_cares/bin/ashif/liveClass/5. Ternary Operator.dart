// This file demonstrates the usage of the ternary operator (condition ? expr1 : expr2)

void main() {
  // Example 1: Basic ternary operator
  int age = 20;

  print('Example 1: Basic ternary operator');
  String message = age >= 18 ? 'Adult' : 'Minor';
  print('Status: $message');

  // Example 2: Nested ternary operators
  int score = 85;

  print('\nExample 2: Nested ternary operators');
  String grade =
      score >= 90
          ? 'A'
          : score >= 80
          ? 'B'
          : score >= 70
          ? 'C'
          : score >= 60
          ? 'D'
          : 'F';
  print('Grade: $grade');
}
