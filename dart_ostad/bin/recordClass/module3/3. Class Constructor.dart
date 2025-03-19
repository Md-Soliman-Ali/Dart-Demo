class Car {
  String? brand;
  String? model;
  int? year;

  Car({required this.brand, required this.model, required this.year});

  void displayInfo() {
    print("This Car Brand: $brand, Model: $model, Year: $year");
  }
}

void main() {
  Car myCar = Car(brand: "Toyota", model: "Corola", year: 2025);
  myCar.displayInfo();
}
