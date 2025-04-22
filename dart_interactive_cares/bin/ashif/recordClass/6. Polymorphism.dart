class Car {
  int numberOfSeats = 4;

  void startEngine() {
    print("start engine!");
  }

  void drive() {
    print("move the wheel and drive!");
  }
}

// Inheritance
class ElectricCar extends Car {
  void chargeBattery() {
    print("recharge the battery!");
  }
}

// Inheritance
class FlyingCar extends Car {
  /// Polymorphism
  @override
  void drive() {
    print("drive by flying!");
  }
}

// Inheritance
class SelfDrivingCar extends Car {
  late String destination;

  /// contractor
  SelfDrivingCar(String userDestination) {
    destination = userDestination;
  }

  /// Polymorphism
  @override
  void drive() {
    // do parent class
    super.drive();
    // do self class
    print("drive to destination: $destination");
  }
}

void main() {
  ElectricCar electricCar = ElectricCar();
  electricCar.drive();
  electricCar.chargeBattery();

  FlyingCar flyingCar = FlyingCar();
  flyingCar.drive();

  SelfDrivingCar selfDrivingCar = SelfDrivingCar("Dhaka");
  selfDrivingCar.drive();
}
