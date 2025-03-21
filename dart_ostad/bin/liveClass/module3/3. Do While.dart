main() {
  int i = 5;
  do {
    print("Hello My Index is: $i");
    i++;
  } while (i <= 10);

  print("\n");

  int x = 1;
  do {
    print("15 x $x = ${15 * (x)}");
    x++;
  } while (x <= 10);

  print("\n");

  List<String> students = ['Rahim', 'Karim', 'taufiq', 'Ali', 'Rafiq'];
  List<double> result = [3.55, 4.25, 4.50, 5.0, 1.0];

  int index = 0;
  do {
    print("${students[index]} Your Result is ${result[index]}");
    index++;
  } while (index < students.length);
}
