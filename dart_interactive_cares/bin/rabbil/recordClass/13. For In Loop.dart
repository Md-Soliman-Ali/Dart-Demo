void main() {
  // List
  var alphaList = ["A", "B", "C", "X", "Y", "Z"];
  for (var oneAlpha in alphaList) {
    print(oneAlpha);
  }

  print("\n");

  // Set
  var alphaSet = ["A", "B", "C", "X", "Y", "Z"];
  for (var oneAlpha in alphaSet) {
    print(oneAlpha);
  }

  print("\n");

  // Json List
  var productList = [
    {"name": "soap", "price": 100},
    {"name": "sugar", "price": 50},
    {"name": "milk", "price": 120},
    {"name": "cake", "price": 300},
    {"name": "potato", "price": 30},
    {"name": "fish", "price": 500},
  ];
  for (var oneProduct in productList) {
    var info =
        "Product Name is ${oneProduct["name"]} and Price is ${oneProduct["price"]} Taka";
    print(info);
  }
}
