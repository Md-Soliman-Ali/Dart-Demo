abstract class Message {
  void msgOne(); // unimplemented method; has no body

  void msgTwo(); // unimplemented method; has no body

  void display() {} // implemented method; has body
}

/// if one method are implemented in abstract class then use extends
class PersonOne extends Message {
  @override
  void msgOne() {
    print("Message One");
  }

  @override
  void msgTwo() {
    print("Message Two");
  }
}

abstract class Car {
  void model(); // unimplemented method; has no body

  void price(); // unimplemented method; has no body
}

/// if all method are unimplemented in abstract class use implements
class BMW implements Car {
  @override
  void model() {
    print("Model");
  }

  @override
  void price() {
    print("Price");
  }
}
