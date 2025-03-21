class Human {
  String? name;
  String? color;
  int eye = 2;
  int hands = 2;
  int legs = 2;
  static String className = 'Human Class';

  moving() {
    print('$name is Moving ...');
  }

  static sleep() {
    print('Human is Sleeping!');
  }
}
