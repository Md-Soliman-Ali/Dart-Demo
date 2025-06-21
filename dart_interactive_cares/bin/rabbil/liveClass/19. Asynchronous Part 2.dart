Future<void> main() async {
  print("Loading....");
  await Future.delayed(Duration(seconds: 10)); // Say API Calling
  print("Display Data");
}
