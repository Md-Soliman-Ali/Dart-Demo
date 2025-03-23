class Restaurant {
  String name;
  String location = 'Dhaka';
  int _id = 2025;

  Restaurant(this.name);

  order(String item) {
    print('$item Ordered');
    _shopping(item);
    _prepareItem(item);
    print('$item Served');
  }

  /// private
  _prepareItem(String item) {
    print('$item Cooking');
  }

  /// private
  _shopping(String item) {
    print('Buy Material');
  }

  // getter method
  int get restaurantId => _id;

  /*  int get restaurantId{
    return _id;
  } */

  // setter method
  set setRestaurantId(int value) {
    _id = value;
  }
}
