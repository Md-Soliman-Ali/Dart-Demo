class Car {
  int noOfDoors = 4;
  String color;

  Car({required this.color});
}

class Square {
  int side = 4;

  int area() {
    return side * side;
  }
}

class Circle {
  // static double pi = 3.1416;
  static const double pi = 3.1416;
}

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
  /*
  Car myCar1 = Car(color: "Blue");
  myCar1.noOfDoors;
  Car(color: "Red").noOfDoors;
  */

  // print(Square().side);

  /*
  print(Circle.pi);
  Circle.pi = 4.1416;
  print(Circle.pi);
  */

  CircleTwo circleTwo = CircleTwo(5);
  print("area using instance method: ${circleTwo.calculateArea()}");

  /// accessing static method and constant directly from the class
  print("value of pi: ${CircleTwo.pi}");
  print("area using static method: ${CircleTwo.area(5)}");
}
