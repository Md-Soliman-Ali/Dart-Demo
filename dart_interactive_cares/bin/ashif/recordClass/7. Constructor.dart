class Car {
  /// Phase: 01
  /*
  String company = "Toyota";
  String model = "X-Corolla";

  // default constructor
  Car();
  */

  /// Phase: 02
  /*
  late String company;
  late String model;

  Car({required String carCompany, required String carModel}) {
    company = carCompany;
    model = carModel;
  }
  */

  /// Phase: 03
  /*
  late String company;
  late String model;

  Car({required String company, required String model}) {
    this.company = company;
    this.model = model;
  }
  */

  late String company;
  late String model;

  Car({required this.company, required this.model});
}

void main() {
  /// Phase: 01
  /*
  Car myCar = Car();
  print(myCar.model);
  */

  /// Phase: 02
  /*
  Car myCar = Car(carCompany: "Toyota", carModel: "X-Corolla");
  print(myCar.company);
  */

  Car myCar = Car(company: "Toyota", model: "X-Corolla");
  print(myCar.company);
}
