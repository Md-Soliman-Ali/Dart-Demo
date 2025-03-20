main() {
  // Assignment Operators
  int a = 5;

  a += 3; // a=a+3
  print(a);

  a -= 2; // a=a-2
  print(a);

  a *= 2; // a=a*2
  print(a);

  print("\n");

  // Relational Operators
  int x = 10, y = 20;

  print(x < y);
  print(x > y);
  print(x == y);
  print(x != y);

  print("\n");

  // Logical Operator
  print((x > 5) && (y > 20)); // And
  print((x > 5) || (y > 20)); // Or
  print(!(x == y)); // Not Equal
}
