main() async {
  await productList();
}

Future<void> productList() async {
  await loadData();
}

Future<void> loadData() async {
  print("Loading....");
  await Future.delayed(Duration(seconds: 10)); // Say API Calling
  print("Display Data");
}
