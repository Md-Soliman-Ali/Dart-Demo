class DatabaseConnection {
  // Private Constructor
  DatabaseConnection._privateConstructor();

  // Single Instance
  static final DatabaseConnection _connection =
      DatabaseConnection._privateConstructor();

  // Factory Constructor
  factory DatabaseConnection() {
    return _connection;
  }

  void addTwo(int a, int b) {
    print(a + b);
  }
}

void main() {
  var oBJ1 = DatabaseConnection();
  var oBJ2 = DatabaseConnection();
  var oBJ3 = DatabaseConnection();
  var oBJ4 = DatabaseConnection();
  print(identical(oBJ1, oBJ4));
}
