void main() {
  // Example 1: Basic for loop increment
  print('Example 1: Basic for loop');
  for (int i = 1; i <= 5; i++) {
    print('Increment Count: $i');
  }

  // Example 2: Basic for loop decrement
  print('\nExample 2: Basic for loop');
  for (int j = 5; j >= 1; j--) {
    print('Decrement Count: $j');
  }

  // Example 3: For loop with break
  print('\nExample 3: For loop with break');
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break;
    }
    print('Number: $i');
  }

  // Example 4: For loop with continue
  print('\nExample 4: For loop with continue');
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
    print('Number: $i');
  }

  // Example 5: For loop with multiple variables
  print('\nExample 5: For loop with multiple variables');
  for (int i = 1, j = 10; i <= 5; i++, j--) {
    print('i: $i, j: $j');
  }

  // Example 6: Nested for loops
  print('\nExample 6: Nested for loops');
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('i: $i, j: $j');
    }
  }
}
