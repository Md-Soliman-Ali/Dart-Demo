// interface class = abstract class
abstract class Profile {
  void profileDetails();
}

// Open - Close => Extends or Collapse

class User implements Profile {
  @override
  void profileDetails() {
    print("That is User Profile");
  }
}

class Admin implements Profile {
  @override
  void profileDetails() {
    print("That is Admin Profile");
  }
}

class Manager implements Profile {
  @override
  void profileDetails() {
    print("That is Manager Profile");
  }
}

class Staff implements Profile {
  @override
  void profileDetails() {
    print("That is Staff Profile");
  }
}
