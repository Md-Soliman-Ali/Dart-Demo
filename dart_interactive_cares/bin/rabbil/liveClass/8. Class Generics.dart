class PopulationOfBangladesh<ValueType> {
  ValueType total;

  PopulationOfBangladesh(this.total);
}

void main() {
  // Generics for List, Map, Set
  List<int> myList1 = [1, 2, 3, 4];
  List<dynamic> myList = ['A', 1, true];
  Map<String, dynamic> person = {"Name": "Omar", "age": 25};

  var intObj = PopulationOfBangladesh<int>(14000000);
  var stringObj = PopulationOfBangladesh<String>("14000000");
}
