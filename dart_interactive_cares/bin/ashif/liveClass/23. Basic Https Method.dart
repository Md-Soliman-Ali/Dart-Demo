import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = 'https://jsonplaceholder.typicode.com';

class BasicHttpMethods {
  static Future<void> runAllExamples() async {
    await getExample();
    await postExample();
  }

  // GET Request - Read data
  static Future<void> getExample() async {
    print('📖 GET REQUEST EXAMPLE');

    try {
      final response = await http.get(
        Uri.parse('$baseUrl/posts/1'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );

      print('✅ Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('👤 User ID: ${data['userId']}');
        print('📄 Title: ${data['title']}');
      } else {
        print('❌ Error: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Exception: $e');
    }
    print('');
  }

  // POST Request - Create data
  static Future<void> postExample() async {
    print('➕ POST REQUEST EXAMPLE');

    try {
      final newPost = {
        'title': 'My First Post from Dart',
        'body': 'This post was created using Dart HTTP package',
        'userId': 1,
      };

      print('📄 Title: ${newPost['title']}');

      final response = await http.post(
        Uri.parse('$baseUrl/posts'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(newPost),
      );

      print('✅ Status Code: ${response.statusCode}');

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print('🆔 Created Post ID: ${data['id']}');
        print('📄 Title: ${data['title']}');
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
  await BasicHttpMethods.runAllExamples();
}
