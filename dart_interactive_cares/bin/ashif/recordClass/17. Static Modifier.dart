/// Step: 01
class Car {
  int noOfDoors = 4;
  String color;

  Car({required this.color});
}

/// Step: 02
class Square {
  int side = 4;

  int area() {
    return side * side;
  }
}

/// Step: 03
class Circle {
  // static double pi = 3.1416;
  static const double pi = 3.1416;
}

/// Step: 04
class CircleTwo {
  static const double pi = 3.1416;
  double radius;

  CircleTwo(this.radius);

  static double area(double radius) {
    /// static method
    return pi * radius * radius;
  }

  double calculateArea() {
    /// instance method
    // return CircleTwo.area(radius);
    return area(radius);
  }
}

void main() {
  /// Step: 01
  /*
  Car myCar1 = Car(color: "Blue");
  myCar1.noOfDoors;
  Car(color: "Red").noOfDoors;
  */

  /// Step: 02
  // print(Square().side);

  /// Step: 03
  /*
  print(Circle.pi);
  Circle.pi = 4.1416;
  print(Circle.pi);
  */

  /// Step: 04
  CircleTwo circleTwo = CircleTwo(5);
  print("area using instance method: ${circleTwo.calculateArea()}");

  /// accessing static method and constant directly from the class without creating any object
  print("value of pi: ${CircleTwo.pi}");
  print("area using static method: ${CircleTwo.area(5)}");
}
