void main() {
  Map<String, dynamic> student = {
    "name": "OMAR",
    "age": 25,
    "grade": "A",
    "isPassed": true,
  };

  print("Student Details: $student");

  // Accessing Values
  print("Student Name: ${student["name"]}");
  student["grade"] = "A+";
  print("Student Update Grade: ${student["grade"]}");
  student["city"] = "Dhaka";
  print("Student Address: ${student["city"]}");
  student.remove("age");
  print("Student Details: $student");

  if (student.containsKey("grade")) {
    print("Yes");
  } else {
    print("No");
  }

  print("Keys: ${student.keys}");
  print("Values: ${student.values}");
}
