class MyClass {
  final int a; // final
  final int b; // final

  const MyClass({required this.a, required this.b}); // const

  int addTwo() {
    return a + b;
  }
}

void main() {
  MyClass ob1 = MyClass(a: 100, b: 200);

  // a, b and obj1 এর ভেলু একই মেমেরি লোকেশনে চেঞ্জ হচ্ছে না, বরং ধ্বংস হয়ে পুনরায় তৈরি হচ্ছে।
  ob1 = MyClass(a: 400, b: 600);
  print(ob1.addTwo());
}
