/// Regular Function
addTwo() {
  var x = 10;
  var y = 30;
  var z = x + y;
  print(z);
}

/// Positional Parameter Function
subTwo(x, y) {
  var z = x - y;
  print(z);
}

/// Named Parameter Function: {}
person({String? name, required int age, required String city}) {
  print("Name is $name age is  $age city is $city");
}

/// Default Parameter Function: {}
addNumbers({a, b, c, d = 100}) {
  print(a + b + c + d);
}

/// Anonymous/Lambda Function
var myFun = (x, y) {
  print(x + y);
};

/// Inline/Arrow Function
var mulTwo = (x, y) => print(x * y);
var fun = () => print("Dart");

/// Function Return (কোন ফাংশন যখন কিছু রিটার্ন করে,গুনে ও মানে উহা তাহার সমান হয়ে যায়)
int abSquare(a, b) {
  return (a * a) + (2 * a * b) + (b * b);
}

int fun1() {
  return 10;
}

List fun2() {
  return ["A", "B", "C"];
}

/// Higher Order Function/Call Back Function (একটি ফাংশন আরেকটি ফাংশনকে প্যারামিটার আকারে গ্রহণ করে)
higherOrderFunction1(x, y) {
  print(x + y);
}

higherOrderFunction2(callBackFunction) {
  callBackFunction();
}

/// Recursive Function (একটি ফাংশন যখন নিজেই নিজেকে কল করে)
myRecursiveFunction(n) {
  // Stop Condition First
  if (n <= 1) return 1;

  var result = n * myRecursiveFunction(n - 1);
  return result;
}

void main() {
  // Regular Function
  addTwo();

  // Positional Parameter Function
  subTwo(10, 5);

  // Named Parameter Function
  person(age: 38, city: "Dhaka");

  // Default Parameter Function
  addNumbers(a: 1, b: 2, c: 3);

  // Anonymous/Lambda Function
  myFun(60, 55);

  // Inline/Arrow Function
  mulTwo(10, 40);
  fun();

  // Function Return
  int result = abSquare(2, 3);
  print(result);
  print(fun1());
  print(fun2());

  // Higher Order Function/Call Back Function
  higherOrderFunction2(() => higherOrderFunction1(10, 40));

  // Recursive Function
  var result2 = myRecursiveFunction(3);
  print(result2);
}
