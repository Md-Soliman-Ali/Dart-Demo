void main() {
  // Example 1: Basic null-aware operator (??)
  String? name;

  print('Example 1: Basic null-aware operator (??)');
  String greeting = name ?? 'Guest';
  print('Hello, $greeting!');

  // Example 2: Null-aware assignment operator (??=)
  String? message;

  print('\nExample 2: Null-aware assignment operator (??=)');
  message ??= 'Default message';
  print('Message: $message');
}
