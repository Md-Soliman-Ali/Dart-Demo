main() {
  for (int i = 1; i <= 10; i++) {
    print('Ami niche giyechi $i bar');
  }

  print("\n");

  for (int i = 1; i <= 10; i++) {
    print("15 x $i = ${15 * (i)}");
  }

  print("\n");

  List<String> students = ['Rahim', 'Karim', 'Taufiq', 'Ali', 'Rafiq'];
  List<int> amount = [1000, 500, 750, 600, 800];

  for (int index = 0; index < students.length; index++) {
    print(
      "Student $index Name: ${students[index]} \nYour ${amount[index]} Payment Due\n",
    );
  }

  print("\n");

  for (var student in students) {
    int index = students.indexOf(student);
    print(
      "Student $index Name: ${students[index]} \nYour ${amount[index]} Payment Due\n",
    );
  }

  print("\n");

  students.asMap().forEach((index, student) {
    print(
      "Student $index Name: ${students[index]} \nYour ${amount[index]} Payment Due\n",
    );
  });
}
