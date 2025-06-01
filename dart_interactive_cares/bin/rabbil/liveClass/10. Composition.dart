class MudiDokan {
  void oil() => print("oil from MudiDokan");

  void lobon() => print("lobon from MudiDokan");
}

class KosaiDokan {
  void muttonMeet() => print("Mutton from KosaiDokan");
}

class Kitchen {
  void cookingMeat() {
    MudiDokan().oil();
    MudiDokan().lobon();
    KosaiDokan().muttonMeet();
    print("Cooking is finished");
  }
}

void main() {
  Kitchen().cookingMeat();
}
