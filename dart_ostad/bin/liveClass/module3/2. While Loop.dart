main() {
  int i = 5;
  while (i <= 10) {
    print("Hello My Index is $i");
    i++;
  }

  print("\n");

  int x = 1;
  while (x <= 10) {
    print("15 x $x = ${15 * (x)}");
    x++;
  }

  print("\n");

  List<String> students = ['Rahim', 'Karim', 'taufiq', 'Ali', 'Rafiq'];
  List<double> result = [3.55, 4.25, 4.50, 5.0, 1.0];

  int index = 0;
  while (index < students.length) {
    print("${students[index]} Your Result is ${result[index]}");
    index++;
  }
}
