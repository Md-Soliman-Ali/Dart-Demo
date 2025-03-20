main() {
  var person = {
    'name': 'OMAR',
    'age': 26,
    'experience': '3 years',
    'results': [5, 3.75],
  };

  Map<String, dynamic> person2 = {
    'name': 'Ali',
    'age': 25,
    'experience': '1 years',
  };

  print(person);
  print(person['name']);
  person['address'] = 'Dhaka';
  print(person);
  person['age'] = 28;
  print(person);
  person.remove('experience');
  print(person);
  print(person.containsKey('name'));
  print(person.containsValue('Dhaka'));
  print(person.keys);
  print(person.values);
  print(person.length);

  var additionalInfo = {'Subject': 'CSE', 'CGPA': 3.80};

  person.addAll(additionalInfo);
  print(person);

  var keyList = person.keys.toList();
  print(keyList);

  var valueList = person.values.toList();
  print(valueList);
}
