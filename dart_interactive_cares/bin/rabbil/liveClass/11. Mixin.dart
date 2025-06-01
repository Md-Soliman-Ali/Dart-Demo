mixin Oxygen {
  void gas() => print('All We Need Oxygen Gas');
}

class Omar with Oxygen {}

class Sakib with Oxygen {}

void main() {
  Omar().gas();
  Sakib().gas();
}
