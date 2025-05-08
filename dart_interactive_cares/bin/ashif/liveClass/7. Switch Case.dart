import 'dart:io';

void main() {
  // Example 1: Basic switch-case with numbers
  print('\nExample 1: Basic switch-case with numbers');
  print('Enter a number between 1 and 7 to get the day of the week:');
  int? day = int.tryParse(stdin.readLineSync() ?? '0');

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
    case 7:
      print('Weekend');
      break;
    default:
      print('Invalid Day');
  }
}
