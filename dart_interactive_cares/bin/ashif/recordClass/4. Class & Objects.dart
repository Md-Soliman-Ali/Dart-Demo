class Car {
  String companyName = "Toyota";
  late String modelName;

  /*
  Car(String givenModel) {
    model = givenModel;
  }
  */

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
