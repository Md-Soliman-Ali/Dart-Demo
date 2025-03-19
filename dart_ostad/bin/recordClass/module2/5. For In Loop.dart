void main() {
  List<String> fruits = ["apple", "banana", "cherry"];
  Set<int> numbers = {1, 2, 3};

  for (var fruit in fruits) {
    print(fruit);
  }

  for (var number in numbers) {
    print(number);
  }

  List<Map<String, dynamic>> users = [
    {"Name": "Alice", "Age": 25},
    {"Name": "Ble", "Age": 20},
  ];

  for (var user in users) {
    print("Name ${user["Name"]}, Age ${user["Age"]}");
  }
}
