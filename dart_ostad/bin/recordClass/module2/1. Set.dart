void main() {
  Set<String> colors = {"red", "green"};
  print(colors.elementAt(1));
  colors.add("orange");
  print(colors);
  colors.addAll({"black", "white"});
  print(colors);
  print(colors.length);
  print(colors.isEmpty);
  print(colors.isNotEmpty);
  print(colors.contains("black"));
}
