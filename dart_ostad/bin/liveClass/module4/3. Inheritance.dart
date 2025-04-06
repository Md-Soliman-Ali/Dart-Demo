/// Abstract : Not be able to create an Animal object because the Animal class is abstract, which can't be instantiated directly. Use Inheritance
abstract class Animal {
  String name;
  static var className = 'This is Animal Class';

  Animal(this.name);

  eat() {
    print("$name is Eating");
  }

  speak();
}

class Dog extends Animal {
  String color;

  Dog(this.color, String name) : super(name);

  @override
  speak() {
    print('Ghew Ghew');
  }
}

class Cat extends Animal {
  String color;

  Cat(this.color, String name) : super(name);

  @override
  speak() {
    print('Mew Mew');
  }
}

main() {
  // Using Static
  print(Animal.className);

  Dog tom = Dog('Black', 'Tom');
  tom.speak();

  Cat misty = Cat('White', 'Misty');
  misty.eat();
  misty.speak();
}
