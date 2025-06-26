import 'dart:async';

const String baseUrl = 'https://jsonplaceholder.typicode.com';

class StreamExamples {
  static Future<void> runAllExamples() async {
    await basicStreamExample();
  }

  // Basic stream example
  static Future<void> basicStreamExample() async {
    print('🌊 BASIC STREAM EXAMPLE');
    print('Starting basic stream...');

    await for (String data in getBasicStream()) {
      print('📡 Received: $data');
    }

    print('✅ Stream completed!');
    print('');
  }

  // Generate a basic stream
  static Stream<String> getBasicStream() async* {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield 'Data update $i at ${DateTime.now().toString().substring(11, 19)}';
    }
  }
}

// Run this example
void main() async {
  await StreamExamples.runAllExamples();
}
