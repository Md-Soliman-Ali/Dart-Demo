void main() {
  var person = new Map();
  person["name"] = "OMAR";
  person["age"] = 25;
  person["city"] = "Dhaka";

  print(person);
  print(person.keys);
  print(person.values);
  print(person.length);
  print(person.isEmpty);
  print(person.isNotEmpty);

  print("\n");

  person.addAll({"country": "Bangladesh", "Blood": "A+"});
  print(person);

  /*
  person.clear();
  print(person);
  */

  person.remove("age");
  print(person);
}
