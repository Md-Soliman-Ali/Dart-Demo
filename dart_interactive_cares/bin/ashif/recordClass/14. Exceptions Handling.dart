void main() {
  /*
  String value = "abc";
  // run time error
  double result = double.parse(value);
  //  compile time error
  double result = value;
  print(result);
  */

  try {
    String value = "XYZ";
    double result = double.parse(value);
  } catch (error) {
    print(error.toString());
  }

  print("\n");

  double result;
  try {
    String value = "ABC";
    result = double.parse(value);
  } catch (error) {
    print(error.toString());
    result = 0;
  }
  print(result);
}
