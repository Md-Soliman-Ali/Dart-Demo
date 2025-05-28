/*
  What is Super Keyword?
  - The 'super' keyword is used to refer to the parent class (superclass)
  - It allows child classes to access parent class methods, properties, and constructors
  - It's essential for inheritance and method overriding

  Why do we use Super Keyword?
  - To call parent class constructors
  - To access parent class methods that are overridden
  - To avoid code duplication
  - To extend parent functionality instead of completely replacing it

  When to use Super Keyword?
  - When calling parent constructors
  - When overriding methods but want to keep parent functionality
  - When accessing parent class properties or methods
*/

// Example 1: Basic Super with Constructor
class Animal {
  String name;
  int age;

  Animal(this.name, this.age) {
    print("Animal constructor called");
  }

  void makeSound() {
    print("Some animal sound");
  }

  void eat() {
    print("$name is eating");
  }
}

class Dog extends Animal {
  String breed;

  // Using super to call parent constructor
  Dog(super.name, super.age, this.breed) {
    print("Dog constructor called");
  }

  // Overriding parent method but extending its functionality
  @override
  void makeSound() {
    super.makeSound(); // Call parent method first
    print("Woof! Woof!"); // Add child-specific behavior
  }

  // Using super to access parent method
  void dogEat() {
    super.eat(); // Call parent's eat method
    print("$name is wagging tail while eating");
  }
}

void main() {
  // Example 1: Basic Super Usage
  print("1. Basic Super with Constructor:");
  var dog = Dog("Buddy", 3, "Golden Retriever");
  dog.makeSound();
  dog.dogEat();
  print("");
}

/*
  1. Constructor Chain: super() must be the first statement in constructor
  2. Method Access: super.methodName() calls parent's version
  3. Property Access: super.propertyName accesses parent's property
  4. Overriding: You can extend parent functionality, not just replace it
  5. Named Constructors: Use super.namedConstructor() for parent named constructors

  COMMON MISTAKES:
  - Forgetting to call super() in constructor when parent has required parameters
  - Using super in static methods (not allowed)
  - Calling super() not as the first statement in constructor body

  BEST PRACTICES:
  - Always call super() when parent constructor requires parameters
  - Use super to extend functionality, not just replace it
  - Document when and why you're using super for clarity
*/
