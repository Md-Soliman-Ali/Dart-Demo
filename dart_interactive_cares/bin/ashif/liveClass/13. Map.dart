void main() {
  // 1. Create a Map
  void createMap() {
    // Different ways to create a Map
    Map<String, int> scores1 = {'John': 90, 'Alice': 85, 'Bob': 95};
    Map<String, dynamic> scores2 = {};
    scores2['John'] = 90;
    scores2['Alice'] = 85;

    print('Map 1: $scores1');
    print('Map 2: $scores2');
  }

  // 2. Access an item from a Map
  void accessMapItem() {
    Map<String, String> capitals = {
      'USA': 'Washington D.C.',
      'Japan': 'Tokyo',
      'France': 'Paris',
    };

    print('Capital of USA: ${capitals['USA']}');
    print('Capital of Germany: ${capitals['Germany']}');
  }

  // 3. Add a key-value pair to a Map
  void addToMap() {
    Map<String, int> ages = {'John': 25, 'Alice': 30};
    print('Original Map: $ages');

    ages['Bob'] = 28;
    print('After adding Bob: $ages');
  }

  // 4. Update a key-value pair in a Map
  void updateMap() {
    Map<String, String> colors = {'apple': 'red', 'banana': 'yellow'};
    print('Original Map: $colors');

    colors['apple'] = 'green';
    print('After updating apple: $colors');
  }

  // 5. Remove an item from a Map
  void removeFromMap() {
    Map<String, double> prices = {
      'apple': 1.99,
      'banana': 0.99,
      'orange': 2.49,
    };
    print('Original Map: $prices');

    prices.remove('banana');
    print('After removing banana: $prices');
  }

  // 6. Loop through a Map
  void loopThroughMap() {
    Map<String, int> scores = {'John': 90, 'Alice': 85, 'Bob': 95};

    print('Using forEach:');
    scores.forEach((name, score) {
      print('$name: $score');
    });

    print('\nUsing for-in:');
    for (var entry in scores.entries) {
      print('${entry.key}: ${entry.value}');
    }
  }

  // 7. Convert keys and values of a Map into separate Lists
  void convertMapToLists() {
    Map<String, int> scores = {'John': 90, 'Alice': 85, 'Bob': 95};

    List<String> names = scores.keys.toList();
    List<int> values = scores.values.toList();

    print('Names: $names');
    print('Scores: $values');
  }

  // Run all examples
  print('\n1. Creating Maps:');
  createMap();

  print('\n2. Accessing Map Items:');
  accessMapItem();

  print('\n3. Adding to Map:');
  addToMap();

  print('\n4. Updating Map:');
  updateMap();

  print('\n5. Removing from Map:');
  removeFromMap();

  print('\n6. Looping through Map:');
  loopThroughMap();

  print('\n7. Converting Map to Lists:');
  convertMapToLists();
}
