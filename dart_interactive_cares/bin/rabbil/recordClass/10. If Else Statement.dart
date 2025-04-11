void main() {
  int mark = 75;
  if (mark >= 80) {
    print("Result is A+");
  } else if (mark < 80 && mark >= 70) {
    print("Result is A");
  } else if (mark < 70 && mark >= 60) {
    print("Result is A-");
  } else if (mark < 60 && mark >= 50) {
    print("Result is B");
  } else if (mark < 50 && mark >= 40) {
    print("Result is C");
  } else if (mark < 40 && mark >= 33) {
    print("Result is D");
  } else {
    print("Result is F");
  }
}
