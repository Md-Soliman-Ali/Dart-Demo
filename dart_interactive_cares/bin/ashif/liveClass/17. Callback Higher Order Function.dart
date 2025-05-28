/*
  What are Callbacks?
  - A callback is a function that is passed as an argument to another function
  - The callback function is executed after the main function completes
  - Used for asynchronous operations and event handling
  - Helps in making code more modular and reusable

  What are Higher-Order Functions?
  - Functions that take other functions as parameters
  - Functions that return functions
  - Enable functional programming patterns
  - Make code more flexible and reusable

  Why use Callbacks?
  - Handle asynchronous operations
  - Implement event-driven programming
  - Create more modular code
  - Separate concerns in your application

  Why use Higher-Order Functions?
  - Create more flexible and reusable code
  - Implement functional programming patterns
  - Reduce code duplication
  - Make code more declarative
*/

// Example 1: Basic Callback Function
void fetchData(
  String url,
  Function(String) onSuccess,
  Function(String) onError,
) {
  // Simulating network request
  print("Fetching data from $url...");

  // Simulate success or error randomly
  bool isSuccess = DateTime.now().millisecondsSinceEpoch % 2 == 0;

  if (isSuccess) {
    onSuccess("Data fetched successfully!");
  } else {
    onError("Failed to fetch data!");
  }
}

// Example 2: Calculator without Higher-Order Functions
class BasicCalculator {
  int add(int a, int b) => a + b;

  int subtract(int a, int b) => a - b;

  int multiply(int a, int b) => a * b;

  double divide(int a, int b) => a / b;

  void calculate(String operation, int a, int b) {
    switch (operation) {
      case '+':
        print('$a + $b = ${add(a, b)}');
        break;
      case '-':
        print('$a - $b = ${subtract(a, b)}');
        break;
      case '*':
        print('$a * $b = ${multiply(a, b)}');
        break;
      case '/':
        print('$a / $b = ${divide(a, b)}');
        break;
      default:
        print('Invalid operation');
    }
  }
}

// Example 3: Calculator with Higher-Order Functions
class FunctionalCalculator {
  int add(int a, int b) => a + b;

  int subtract(int a, int b) => a - b;

  int multiply(int a, int b) => a * b;

  double divide(int a, int b) => a / b;

  void calculate(int a, int b, Function operation, String label) {
    print('$label: ${operation(a, b)}');
  }
}

// Example 4:
Function greet(String name) {
  return () {
    print('Hello, $name');
  };
}

void main() {
  // Example 1: Basic Callback
  print("1. Basic Callback Example:");
  fetchData(
    "https://api.example.com/data",
    (String successMessage) => print("Success: $successMessage"),
    (String errorMessage) => print("Error: $errorMessage"),
  );
  print("");

  // Example 2: Basic Calculator
  print("2. Basic Calculator Example:");
  var basicCalc = BasicCalculator();
  basicCalc.calculate('+', 10, 5);
  basicCalc.calculate('-', 10, 5);
  basicCalc.calculate('*', 10, 5);
  basicCalc.calculate('/', 10, 5);
  print("");

  // Example 3: Functional Calculator
  print("3. Functional Calculator Example:");
  var functionalCalc = FunctionalCalculator();
  functionalCalc.calculate(10, 5, functionalCalc.add, 'Add');
  functionalCalc.calculate(10, 5, functionalCalc.subtract, 'Subtract');
  functionalCalc.calculate(10, 5, functionalCalc.multiply, 'Multiply');
  functionalCalc.calculate(10, 5, functionalCalc.divide, 'Divide');
  print("");

  // Example 4:
  var greetLeo = greet('Leo');
  greetLeo();
}

/*
  1. Callbacks:
     - Functions passed as arguments
     - Executed after main function completes
     - Used for async operations
     - Handle events and responses

  2. Higher-Order Functions:
     - Take functions as parameters
     - Return functions
     - Enable functional programming
     - Make code more flexible

  COMMON USE CASES:
  - Event handling
  - Asynchronous operations
  - API calls
  - Data processing
  - UI updates

  BEST PRACTICES:
  1. Keep callbacks simple and focused
  2. Use named parameters for multiple callbacks
  3. Handle errors in callbacks
  4. Document callback parameters
  5. Consider using async/await for complex flows

  ADVANTAGES:
  - More modular code
  - Better separation of concerns
  - Increased code reuse
  - More flexible design

  REMEMBER:
  - Callbacks are essential for async operations
  - Higher-order functions enable functional programming
  - Both make code more maintainable and reusable
  - Use them to create more flexible and modular code
*/
