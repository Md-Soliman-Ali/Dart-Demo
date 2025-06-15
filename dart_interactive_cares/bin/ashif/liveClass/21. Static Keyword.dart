/*
  STATIC KEYWORD IN DART

  What is Static?
  - Static members belong to the class itself, not to any specific instance
  - They can be accessed without creating an object of the class
  - Static variables are shared among all instances of a class
  - Static methods can only access static variables and other static methods

  Why use Static?
  - Memory efficiency: Only one copy exists regardless of how many objects are created
  - Utility functions: Common functionality that doesn't need object state
  - Constants: Class-wide constants that are the same for all instances
  - Counters: Track information across all instances

  When to use Static?
  - For utility methods (like Math functions)
  - For constants that belong to the class
  - For counters or shared data
  - For factory methods or singleton patterns
*/

// Example 1: Basic Static Variables and Methods
class Counter {
  static int totalCount = 0;

  static void staticMethod() {}
}

// Example 2: Static Constants and Utility Class
class MathUtils {
  // Static constants
  static const double PI = 3.14159265359;

  // Private constructor
  MathUtils._();

  // Static utility methods
  static double circleArea(double radius) {
    return PI * radius * radius;
  }

  static double circleCircumference(double radius) {
    return 2 * PI * radius;
  }
}

void main() {
  // Example 1: Basic Static Usage
  print("1. Basic Static Variables and Methods:");
  Counter.totalCount;
  print("");

  // Example 2: Static Utility Methods
  print("2. Static Utility Methods:");
  print("PI value: ${MathUtils.PI}");
  print("Circle area (radius 5): ${MathUtils.circleArea(5)}");
  print("Circle circumference (radius 5): ${MathUtils.circleCircumference(5)}");
}

/*
  KEY POINTS ABOUT STATIC:

  1. Memory: Static members are loaded when the class is first referenced
  2. Access: Use ClassName.staticMember (no object needed)
  3. Inheritance: Static members are inherited but belong to the defining class
  4. No 'this': Static methods cannot use 'this' keyword
  5. Initialization: Static variables are lazily initialized

  COMMON USE CASES:
  - Utility classes (Math, String operations)
  - Constants (PI, MAX_VALUE)
  - Counters and statistics
  - Singleton pattern
  - Factory methods
  - Validation methods

  BEST PRACTICES:
  - Use static for stateless utility methods
  - Use static constants instead of magic numbers
  - Consider memory implications for static variables
  - Use private constructors for utility classes
  - Document when static state is shared across instances

  REMEMBER:
  - Static members belong to the class, not instances
  - Static methods can only access static members directly
  - Static variables are shared across all instances
  - Use static for functionality that doesn't require object state
*/
