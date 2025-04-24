void main() {
  try {
    String value = "XYZ";
    double result = double.parse(value);
  } catch (error) {
    print(error.toString());
  }

  print("\n");

  double result;
  try {
    String value = "XYZ";
    result = double.parse(value);
  } catch (error) {
    print(error.toString());
    result = 0;
  }
  print(result);
}
