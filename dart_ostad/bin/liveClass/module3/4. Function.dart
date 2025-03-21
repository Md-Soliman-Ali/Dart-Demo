/// function with normal parameters
double calculateArea(double length, double width) {
  double area = length * width;
  return area;
}

/// lambda (arrow function) syntax
var calculateLambda = (double length, double width) => (length * width);

/// Function with optional parameter
calculateAreaOptionalParameter(double length, double width, [String? extra]) {
  double area = length * width;
  if (extra != null) {
    print("Optional Parameter: $extra = $area");
  } else {
    print("Area: $area");
  }
}

/// function with default value
double calculateAreaWithDefaults({double length = 10.0, double width = 5.0}) {
  return length * width;
}

main() {
  /// without function
  double length1 = 0.5;
  double width1 = 0.5;
  double area1 = length1 * width1;
  print("Area-1:  $area1");

  double length2 = 0.75;
  double width2 = 0.75;
  double area2 = length2 * width2;
  print("Area-2:  $area2");

  print("\n");

  /// with function
  print("Area-1: with function ${calculateArea(0.5, 0.5)}");
  print("Area-2: with function ${calculateArea(0.75, 12.5)}");

  print("Area-1 with arrow function ${calculateLambda(0.5, 0.5)}");
  print("Area-2 with arrow function ${calculateLambda(0.75, 12.5)}");

  print("\n");

  calculateAreaOptionalParameter(0.5, 0.5);
  calculateAreaOptionalParameter(0.5, 0.5, 'Dhaka');

  print("\n");

  print("Area-1 with default values: ${calculateAreaWithDefaults()}");
  print("Area-2 with default values: ${calculateAreaWithDefaults(length: 2.0)}");
  print("Area-3 with default values: ${calculateAreaWithDefaults(width: 5.0)}");
}
