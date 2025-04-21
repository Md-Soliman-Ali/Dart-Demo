import 'dart:math';

void main() {
  playGame();
}

void playGame() {
  int score = Random().nextInt(100) + 1;
  print("My Score: $score");

  if (score > 90) {
    print("I Am Best Player!");
  } else if (score > 70) {
    print("I Am Good Player!");
  } else if (score > 55) {
    print("I Am Average Player!");
  } else {
    print("I Am Bad Player!");
  }
}
