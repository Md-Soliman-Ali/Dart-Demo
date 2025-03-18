void main() {
  int x = 10;
  double y = 5.5;
  String name = "OMAR";
  bool isBangladeshi = true;
  dynamic city = ["Dhaka", "Khulna", 7, false];
  dynamic person = {"name": "OMAR", "age": 25, "city": "Dhaka"};

  print('The values are: $x, $y, $name, $isBangladeshi, $city, $person');
  print(city[2]);
  print(person["city"]);

  print(person);
  person["country"] = "Bangladesh";
  print(person);
}
