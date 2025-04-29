class Animal {
  void move() {
    print("change position");
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move();
    print("by swimming");
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print("by flying");
  }
}

class Airplane with CanFly {}

mixin CanFly {
  void fly() {
    print("change position by flying");
  }
}

mixin CanSwim {
  void swim() {
    print("change position by swimming");
  }
}

class Duck with CanFly, CanSwim {}

void main() {
  Fish().move();
  Bird().move();

  /// Mixin
  Duck().fly();
  Duck().swim();

  Airplane().fly();
}
