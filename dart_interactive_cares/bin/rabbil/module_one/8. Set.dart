void main() {
  var city = <String>{"Dhaka", "Barisal", "CoxBazar"};
  print(city);

  city.add("Khulna");
  print(city);
  city.addAll({"Rangpur", "Rajshahi"});
  print(city);

  print("\n");

  print(city.elementAt(5));

  print("\n");

  /*
  city.clear();
  print(city);
  */

  print(city.length);
  print(city.first);
  print(city.last);
  print(city.isEmpty);
  print(city.isNotEmpty);
  // print(city.single);
}
