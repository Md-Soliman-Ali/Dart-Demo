import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://jsonplaceholder.typicode.com';

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String website;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.website,
  });

  // Factory constructor to create User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
    );
  }

  // Method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'website': website,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email)';
  }
}

class JsonParsingExamples {
  static Future<void> runAllExamples() async {
    await parseSingleUser();
  }

  // Parse single user JSON
  static Future<void> parseSingleUser() async {
    print('👤 SINGLE USER PARSING');
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/users/1'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Raw JSON string
        print('📄 Raw JSON:');
        print(response.body);
        print('');

        // Parse JSON string to Map
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        print('🔍 Parsed Map:');
        print('ID: ${jsonData['id']}');
        print('Name: ${jsonData['name']}');
        print('Email: ${jsonData['email']}');
        print('');

        // Create User object from JSON
        final user = User.fromJson(jsonData);
        print('👤 User Object: $user');
        print('');
      } else {
        print('❌ Error: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Exception: $e');
    }
    print('');
  }
}

void main() async {
  await JsonParsingExamples.runAllExamples();
}
