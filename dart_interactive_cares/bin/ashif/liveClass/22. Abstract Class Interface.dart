/*
  DART ABSTRACT CLASSES AND INTERFACES

  What are Abstract Classes?
  - Classes that cannot be instantiated directly
  - Can contain both abstract methods (no implementation) and concrete methods (with implementation)
  - Used as base classes for other classes to extend
  - Provide a template/contract for subclasses

  What are Interfaces?
  - In Dart, every class implicitly defines an interface
  - Interfaces define what methods a class must implement
  - Use 'implements' keyword to implement an interface
  - A class can implement multiple interfaces

  Why use Abstract Classes?
  - Share common code among related classes
  - Force subclasses to implement specific methods
  - Create a consistent API across related classes
  - Reduce code duplication

  Why use Interfaces?
  - Define contracts that classes must follow
  - Support multiple inheritance of type
  - Create loosely coupled, flexible designs
  - Enable polymorphism

  When to use:
  - Abstract Classes: When you have shared implementation and want to enforce a contract
  - Interfaces: When you need multiple inheritance or just want to define a contract
*/

// Example 1: Basic Abstract Class
abstract class Animal {
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Abstract methods - must be implemented by subclasses
  void makeSound();

  void move();

  // Concrete methods - can be used by all subclasses
  void eat() {
    print("$name is eating...");
  }

  void sleep() {
    print("$name is sleeping... ZZZ");
  }

  // Method that uses abstract methods
  void performDailyActivities() {
    print("$name's daily activities:");
    makeSound();
    move();
    eat();
    sleep();
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print("$name barks: Woof! Woof!");
  }

  @override
  void move() {
    print("$name runs on four legs");
  }

  // Additional method specific to Dog
  void wagTail() {
    print("$name is wagging tail happily!");
  }
}

class Bird extends Animal {
  bool canFly;

  Bird(String name, int age, this.canFly) : super(name, age);

  @override
  void makeSound() {
    print("$name chirps: Tweet! Tweet!");
  }

  @override
  void move() {
    if (canFly) {
      print("$name flies in the sky");
    } else {
      print("$name walks on the ground");
    }
  }
}

// Interface (implicit - every class is an interface)
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

// Class implementing multiple interfaces
class Duck extends Animal implements Flyable, Swimmable {
  Duck(super.name, super.age);

  @override
  void makeSound() {
    print("$name quacks: Quack! Quack!");
  }

  @override
  void move() {
    print("$name can walk, fly, and swim");
  }

  @override
  void fly() {
    print("$name is flying low over the water");
  }

  @override
  void swim() {
    print("$name is swimming gracefully");
  }
}

// Example 3: Database Interface Pattern
abstract class DatabaseConnection {
  void connect();

  void disconnect();
}

// MySQL implementation
class MySQLConnection implements DatabaseConnection {
  String host;
  int port;
  bool _isConnected = false;

  MySQLConnection(this.host, this.port);

  @override
  void connect() {
    print("Connecting to MySQL at $host:$port");
    _isConnected = true;
  }

  @override
  void disconnect() {
    print("Disconnecting from MySQL");
    _isConnected = false;
  }
}

// MongoDB implementation
class MongoDBConnection implements DatabaseConnection {
  String host;
  int port;
  bool _isConnected = false;

  MongoDBConnection(this.host, this.port);

  @override
  void connect() {
    print("Connecting to MongoDB at $host:$port");
    _isConnected = true;
  }

  @override
  void disconnect() {
    print("Disconnecting from MongoDB");
    _isConnected = false;
  }
}

class UserService {
  final DatabaseConnection db;

  UserService(this.db);

  void performDbOperation() {
    db.connect();
    db.disconnect();
  }
}

void main() {
  // Example 1: Abstract Classes
  print("1. Abstract Classes:");
  Dog dog = Dog("Buddy", 3, "Golden Retriever");
  Bird eagle = Bird("Eagle", 5, true);
  Bird penguin = Bird("Penguin", 2, false);

  dog.performDailyActivities();
  print("");
  eagle.performDailyActivities();
  print("");
  penguin.performDailyActivities();
  dog.wagTail();
  print("");

  print("2. Multiple Interface Implementation:");
  Duck duck = Duck("Donald", 2);
  duck.performDailyActivities();
  duck.fly();
  duck.swim();
  print("");

  print("3. Database Interface Pattern:");
  UserService userService = UserService(MySQLConnection("localhost", 3306));
  userService.performDbOperation();
}

/*
  KEY DIFFERENCES:

  ABSTRACT CLASSES:
  - Can have both abstract and concrete methods
  - Can have constructors and instance variables
  - Single inheritance only (extends)
  - Use when you want to share code among closely related classes

  INTERFACES:
  - All methods are implicitly abstract (contracts only)
  - Multiple inheritance allowed (implements)
  - Cannot have constructors or instance variables
  - Use when you want to define a contract that unrelated classes can follow

  BEST PRACTICES:

  1. Abstract Classes:
     - Use for base classes with shared implementation
     - Provide common functionality and enforce contracts
     - Good for template method pattern

  2. Interfaces:
     - Use for defining contracts
     - Enable multiple inheritance of type
     - Good for dependency injection and testing
     - Create flexible, loosely coupled designs

  COMMON PATTERNS:
  - Template Method Pattern (abstract classes)
  - Strategy Pattern (interfaces)
  - Factory Pattern (abstract factories)
  - Repository Pattern (interfaces for data access)
  - Plugin Architecture (interfaces for extensibility)

  REMEMBER:
  - Abstract classes cannot be instantiated
  - Abstract methods must be implemented by concrete subclasses
  - A class can extend one abstract class but implement multiple interfaces
  - Use abstract classes for "is-a" relationships
  - Use interfaces for "can-do" relationships
*/
