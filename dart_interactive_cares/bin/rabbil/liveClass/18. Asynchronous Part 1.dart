main() {
  loadData();
}

Future<String> loadData() async {
  print("Loading....");
  await Future.delayed(Duration(seconds: 10)); // Say API Calling
  print("Display Data");
  return "Hello";
}
