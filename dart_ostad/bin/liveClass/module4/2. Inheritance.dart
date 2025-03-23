import 'father.dart';

class Son extends Father {
  String sonName;

  // Son(this.sonName, String fatherName) : super(fatherName);
  Son(this.sonName) : super('Father');
}

main() {
  // Son child = Son('OMAR', 'Father');
  Son child = Son('OMAR');
  print(child.sonName);
  child.land = '150 Bigha';
  print(child.land);
}
