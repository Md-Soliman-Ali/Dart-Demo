void main() {
  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'Japan': 'Tokyo',
    'France': 'Paris',
    'Germany': 'Berlin',
    'Italy': 'Rome',
  };

  /// 1. Using where() to find all keys for a value
  String searchCapital = 'Tokyo';
  List<String> countries =
      capitals.entries
          .where((entry) => entry.value == searchCapital)
          .map((entry) => entry.key)
          .toList();

  print('Countries with capital $searchCapital: $countries');

  /// 2: Using firstWhere() to find the first matching key
  try {
    String country =
        capitals.entries
            .firstWhere((entry) => entry.value == searchCapital)
            .key;
    print('First country with capital $searchCapital: $country');
  } catch (e) {
    print('No country found with capital $searchCapital');
  }
}
