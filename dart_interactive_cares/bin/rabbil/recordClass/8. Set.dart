void main() {
  /// Set is UnOrder List, Avoid Duplicate Values (Works with Unique Value)

  Set<String> city = <String>{"Dhaka", "Barisal", "CoxBazar"};
  print(city);

  // Add Last
  city.add("Khulna");
  print(city);

  // Add Multiple Last
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
