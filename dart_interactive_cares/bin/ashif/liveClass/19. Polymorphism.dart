/*
  What is Polymorphism?
  - Polymorphism means "many forms" - one interface, multiple implementations
  - It allows objects of different classes to be treated as objects of a common base class
  - The same method can behave differently in different classes
  - It's achieved through method overriding and interfaces

  Why use Polymorphism?
  - Write more flexible and maintainable code
  - Reduce code duplication
  - Easy to add new types without changing existing code
  - Enables abstraction and encapsulation

  Types of Polymorphism in Dart:
  1. Runtime Polymorphism (Method Overriding)
  2. Compile-time Polymorphism (Method Overloading - limited in Dart)
*/

// Example 1: Basic Polymorphism with Animals
abstract class Animal {
  String name;

  Animal(this.name);

  // Abstract method - must be implemented by child classes
  void makeSound();

  // Concrete method - can be used by all animals
  void sleep() {
    print("$name is sleeping... ZZZ");
  }
}

class Dog extends Animal {
  Dog(super.name);

  @override
  void makeSound() {
    print("$name says: Woof! Woof!");
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void makeSound() {
    print("$name says: Meow! Meow!");
  }
}

class Cow extends Animal {
  Cow(super.name);

  @override
  void makeSound() {
    print("$name says: Moo! Moo!");
  }
}

// Example 2: Polymorphism with Shapes
abstract class Shape {
  String color;

  Shape(this.color);

  // Abstract methods
  double calculateArea();

  double calculatePerimeter();

  // Concrete method
  void displayInfo() {
    print("Shape Color: $color");
    print("Area: ${calculateArea()}");
    print("Perimeter: ${calculatePerimeter()}");
  }
}

class Circle extends Shape {
  double radius;

  Circle(super.color, this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14159 * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(super.color, this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Triangle extends Shape {
  double base;
  double height;
  double side1, side2;

  Triangle(super.color, this.base, this.height, this.side1, this.side2);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  double calculatePerimeter() {
    return base + side1 + side2;
  }
}

// Utility functions to demonstrate polymorphism
void makeAnimalsSounds(List<Animal> animals) {
  print("=== Making all animals make sounds ===");
  for (Animal animal in animals) {
    animal.makeSound(); // Polymorphic call
    animal.sleep(); // Common method
  }
}

void calculateShapeProperties(List<Shape> shapes) {
  print("=== Calculating properties of all shapes ===");
  for (Shape shape in shapes) {
    shape.displayInfo(); // Polymorphic call
    print("---");
  }
}

void main() {
  // Example 1: Animal Polymorphism
  List<Animal> animals = [Dog("Buddy"), Cat("Whiskers"), Cow("Bessie")];
  makeAnimalsSounds(animals);
  print("");

  // Example 2: Shape Polymorphism
  List<Shape> shapes = [
    Circle("Red", 5.0),
    Rectangle("Blue", 10.0, 6.0),
    Triangle("Green", 8.0, 6.0, 5.0, 7.0),
  ];
  calculateShapeProperties(shapes);
}

/*
  KEY BENEFITS OF POLYMORPHISM:

  1. Code Reusability: Write code once, use with multiple types
  2. Flexibility: Easy to add new types without changing existing code
  3. Maintainability: Changes in implementation don't affect client code
  4. Abstraction: Hide implementation details behind common interface

  REAL-WORLD APPLICATIONS:
  - Plugin systems
  - Game development (different enemy types)
  - UI frameworks (different widget types)
  - Database drivers (different database types)
  - File processing (different file formats)

  IMPORTANT CONCEPTS:
  - Late binding: Method to call is determined at runtime
  - Dynamic dispatch: Correct method version is called based on actual object type
  - Interface contracts: All implementing classes must provide required methods

  REMEMBER:
  - Polymorphism works with inheritance and interfaces
  - Abstract classes force child classes to implement specific methods
  - Use 'is' operator for runtime type checking
  - Use 'runtimeType' to get the actual type of an object
*/
