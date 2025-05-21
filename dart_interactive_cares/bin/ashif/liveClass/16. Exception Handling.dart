import 'dart:io';

/// Exception vs Error:
//  Exception: An exceptional event that occurs during program execution
//   * Can be caught and handled
//   * Usually indicates a recoverable problem
//   * Examples: FileNotFoundException, FormatException

///  Error: A serious problem that should not be caught
//   * Indicates a programming error
//   * Usually cannot be recovered from
//   * Examples: OutOfMemoryError, StackOverflowError

/// Best Practices:
// 1. Only catch exceptions you can handle
// 2. Be specific with exception types
// 3. Don't catch errors
// 4. Clean up resources in finally blocks
// 5. Use custom exceptions for domain-specific errors

void main() {
  /// 1. Basic try-catch block
  void demonstrateBasicTryCatch() {
    print('\n1. Basic try-catch block');
    try {
      // This will throw an exception
      int result = 10 ~/ 0;
      print('Result: $result');
    } catch (error) {
      print('Caught exception: $error');
    }
  }

  /// 2. Using on for specific exceptions
  void demonstrateSpecificExceptions() {
    print('\n2. Specific exception handling');
    try {
      // Try to parse an invalid number
      int number = int.parse('abc');
      print('Number: $number');
    } on FormatException {
      print('Invalid number format');
    } on Exception catch (e) {
      print('Other exception: $e');
    }
  }

  /// 3. Using finally block
  void demonstrateFinally() {
    print('\n3. Using finally block');
    File? file;
    try {
      file = File('test.txt');
      file.writeAsStringSync('Test Content');
      print('File written successfully');
    } catch (e) {
      print('Error writing file: $e');
    } finally {
      // Clean up resources
      if (file != null && file.existsSync()) {
        file.deleteSync();
        print('File cleaned up');
      }
    }
  }

  // Run all examples
  demonstrateBasicTryCatch();
  demonstrateSpecificExceptions();
  demonstrateFinally();
}
