class SaudiArabia {
  void oil(String oilName) {
    print("Saudi: $oilName");
  }
}

class Japan {
  void car(String carName) {
    print("Japan: $carName");
  }
}

class Bangladesh {
  final Japan japan;
  final SaudiArabia saudiArabia;

  Bangladesh(this.japan, this.saudiArabia);

  void carInBangladesh() {
    japan.car("Prius");
    saudiArabia.oil("Octane");
    print("Car Running In Bangladesh Road");
  }
}

void main() {
  Japan japan = Japan();
  SaudiArabia saudiArabia = SaudiArabia();
  Bangladesh obj = Bangladesh(japan, saudiArabia);
  obj.carInBangladesh();
}
