class Car {
  String brand;
  String model;
  int year;

  /// Constructor
  Car(this.brand, this.model, this.year);

  moving() {
    print('$model is Moving');
  }
}

main() {
  Car Honda = Car('Honda', 'Civic', 2025);
  print(Honda.year);
  Honda.moving();
}
