main() {
  Set<String> names = {'Soliman', 'Ali', 'OMAR', 'OMAR'};
  print(names);

  names.add('Galib');
  print(names);
  names.addAll({'Karim', 'Kamal'});
  print(names);

  names.remove('Kamal');
  print(names);
  names.removeAll({'Galib', 'Karim'});
  print(names);

  print("\n");

  print("Contain Ali: ${names.contains('Ali')}");
  print("Element At 2: ${names.elementAt(2)}");
  print("First Element: ${names.first}");
  print("Last Element: ${names.last}");

  print("\n");

  Set<String> names2 = {'Taufiq', 'Kabir', 'Hasan', 'Ali'};

  print("Set-1: $names");
  print("Set-2: $names2");

  print("Intersection Value: ${names.intersection(names2)}");
  print("Union Value: ${names.union(names2)}");

  names.clear();
  print(names);
}
