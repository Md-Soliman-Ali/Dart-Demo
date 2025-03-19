class MathUtils {
  static const double pi = 3.1416;

  static double circleArea(double radius) {
    return pi * radius;
  }
}

void main() {
  // No Need to Create Object
  print(MathUtils.pi);
  print(MathUtils.circleArea(5));
}
