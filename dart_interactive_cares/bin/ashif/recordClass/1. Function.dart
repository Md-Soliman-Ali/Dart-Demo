// required positional parameters
void makeMySandwich(int quantity, String item) {
  print("i have made $quantity sandwich with: $item");
}

// optional positional parameters
void makeMyCake(int quantity, String item1, [String item2 = "Milk"]) {
  print("i have made $quantity cake with: $item1 & $item2");
}

// named parameters
void makeMyBreakfast({
  required int? quantity,
  required String? item1,
  required String? item2,
}) {
  print("i ate $quantity $item1 & $item2 for breakfast this morning");
}

// function return type
int add(int num1, int num2) {
  return num1 + num2;
}

// dart arrow function (return keyword & curly brackets not required)
int sub(int num1, int num2) => num1 - num2;

String greet() => "Hello!";

void main() {
  // required positional parameters
  makeMySandwich(1, "Egg");

  // optional positional parameters
  makeMyCake(2, "Egg");
  makeMyCake(3, "Egg", "Sugar");

  // named parameters
  makeMyBreakfast(quantity: 1, item1: "Sandwich", item2: "Egg");

  // function return type
  int addResult = add(5, 2);
  print("Add Result: $addResult");

  // dart arrow function
  int subResult = sub(5, 2);
  print("Sub Result: $subResult");
}
