abstract class Login {
  void userLogin();
}

abstract class Registration {
  void userRegistration();
}

class DoLogin implements Login {
  @override
  void userLogin() {}
}

class DoRegistration implements Registration {
  @override
  void userRegistration() {}
}
