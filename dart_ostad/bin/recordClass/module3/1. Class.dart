class Car {
  String? brand;
  String? model;
  int? year;

  void displayInfo() {
    print("This Car Brand: $brand, Model: $model, Year: $year");
  }
}

void main() {
  Car myCar = Car();
  myCar.brand = "Toyota";
  myCar.model = "Corola";
  myCar.year = 2025;
  myCar.displayInfo();
}
