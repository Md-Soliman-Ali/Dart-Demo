class Car {
  String? brand;
  String? model;
  int? year;

  /// 1. no return type 2. method name equal to class name
  /// Car () {} -> default constructor
  /// Car (x, y, z) {brand = x; model = y; year = z;} -> parameterized constructor
  /// Car (brand, model, year) {this.brand = brand; this.model = model; this.year = year;}
  /// Car (this.brand, this.model, this.year)

  /// Dart classes do not support constructor & method overloading

  Car({required this.brand, required this.model, required this.year});

  void displayInfo() {
    print("This Car Brand: $brand, Model: $model, Year: $year");
  }
}

void main() {
  Car myCar = Car(brand: "Toyota", model: "Corola", year: 2025);
  myCar.displayInfo();
}
