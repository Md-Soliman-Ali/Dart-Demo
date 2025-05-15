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

  // Run all examples
  print('\n1. Creating Maps:');
  createMap();

  print('\n2. Accessing Map Items:');
  accessMapItem();
}
