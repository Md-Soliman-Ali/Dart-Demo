import 'father.dart';

class Son extends Father {
  String sonName;

  @override
  incomeSource() {
    print("Flutter Developer");
  }

  getFatherIncomeSource() {
    super.incomeSource();
  }

  // Son(this.sonName, String fatherName) : super(fatherName);
  Son(this.sonName) : super('Father');
}

main() {
  // Son child = Son('OMAR', 'Father');
  Son child = Son('OMAR');
  print(child.sonName);
  child.land = '150 Bigha';
  print(child.land);

  child.getFatherIncomeSource();

  // Method Overriding
  child.incomeSource();
}
