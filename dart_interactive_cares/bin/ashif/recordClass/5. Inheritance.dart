class Vehicle {
  void startEngine() {
    print("start the engine!");
  }

  void drive() {
    print("start engine and move the wheel!");
  }

  void reFuel() {
    print("refuel the tank!");
  }
}

// Inheritance
class Car extends Vehicle {
  int numberOfWheels = 4;

  /*
  void startEngine() {
    print("start the engine!");
  }

  void drive() {
    print("start engine and move the wheel!");
  }

  void reFuel() {
    print("refuel the tank!");
  }
  */

  void turnSmartDisplay() {
    print("turn display & play music!");
  }
}

// Inheritance
class Truck extends Vehicle {
  int numberOfWheels = 8;

  /*
  void startEngine() {
    print("start the engine!");
  }

  void drive() {
    print("start engine and move the wheel!");
  }

  void reFuel() {
    print("refuel the tank!");
  }
  */

  void load() {
    print("load material!");
  }
}

void main() {
  Car myCar = Car();
  myCar.startEngine();
  myCar.drive();
  myCar.reFuel();
  myCar.turnSmartDisplay();
}
