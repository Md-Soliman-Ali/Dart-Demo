class Profile {
  String name;
  String? hobby;

  Profile({required this.name, this.hobby});
}

void main() {
  /// null safety: compile time error

  /*
  String name;
  print(name);
  */

  /// show null
  /*
  String? name;
  print(name);
  */

  /*
  late String name;
  String value = "OMAR";
  name = value;
  print(name);
  */

  Profile profile = Profile(name: "OMAR");
  print(profile.name);
  print(profile.hobby);
}
