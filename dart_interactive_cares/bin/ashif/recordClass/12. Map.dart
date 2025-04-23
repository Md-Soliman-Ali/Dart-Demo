Map<String, int> phoneBook = {
  "Sifat": 100,
  "Rimon": 150,
  "Nipa": 170,
  "Arunav": 243,
  "Sujan": 334,
};

void main() {
  print(phoneBook["Nipa"]);
  print(phoneBook["Omar"]);
  phoneBook["Omar"] = 8572;
  print(phoneBook["Omar"]);
  print(phoneBook.length);
  print(phoneBook.keys);
  print(phoneBook.values);
}
