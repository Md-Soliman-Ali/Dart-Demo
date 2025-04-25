/// first letter of the class name will be uppercase & first letter of that class property or method name should be in camel case.
class Car {
  String companyName = "Toyota";
  late String modelName;

  /// constructor
  /*
  Car(String givenModel) {
    model = givenModel;
  }
  */

  /// constructor
  Car({required String givenModel}) {
    modelName = givenModel;
  }

  void driveCar() {
    print("Driving $companyName Car Model: $modelName");
  }
}

void main() {
  Car myCar = Car(givenModel: "Harrier");
  print(myCar.companyName);
  print(myCar.modelName);
  myCar.driveCar();
}
