/*
  DART ENUMS (ENUMERATIONS)

  What are Enums?
  - Enums are a special type that represents a fixed set of constant values
  - They define a group of named constants that belong together
  - Each enum value is a unique constant within that enum type
  - Enums help make code more readable and prevent invalid values

  Why use Enums?
  - Type safety: Prevent invalid values from being used
  - Code readability: Named constants are more meaningful than magic numbers
  - Maintainability: Easy to add/remove options in one place
  - IDE support: Auto-completion and error checking
  - Documentation: Self-documenting code

  When to use Enums?
  - Fixed set of options (like days of week, colors, states)
  - Status values (pending, approved, rejected)
  - Categories or types
  - Configuration options
*/

// Simple Male/Female Example with Enums
enum Gender { male, female }

class User {
  String name;
  Gender gender;

  User(this.name, this.gender);
}

Gender fromServer(int value) {
  if (value == 1) {
    return Gender.male;
  } else {
    return Gender.female;
  }
}

extension GenderExtension on Gender {
  static Gender fromServer(int value) {
    switch (value) {
      case 1:
        return Gender.male;
      case 2:
        return Gender.female;
      default:
        return Gender.male;
    }
  }
}

// Example 1: Enum for Days of Week with Utilities
enum DayOfWeek {
  monday(1, 'Mon', true),
  tuesday(2, 'Tue', true),
  wednesday(3, 'Wed', true),
  thursday(4, 'Thu', true),
  friday(5, 'Fri', false),
  saturday(6, 'Sat', false),
  sunday(7, 'Sun', true);

  final int number;
  final String shortName;
  final bool isWeekday;

  const DayOfWeek(this.number, this.shortName, this.isWeekday);

  // Get if it's weekend
  bool get isWeekend => !isWeekday;

  // Get next day
  DayOfWeek get nextDay {
    int nextIndex = (index + 1) % DayOfWeek.values.length;
    return DayOfWeek.values[nextIndex];
  }
}

void main() {
  // Simple Male/Female Example without Enums
  String gender1 = "Male";
  String gender2 = "Female";
  print("Gender 1: $gender1");
  print("Gender 2: $gender2");

  print("");

  // Simple Male/Female Example with Enums
  Gender genderEnum1 = Gender.male;
  Gender genderEnum2 = Gender.female;
  print("Gender Enum 1: ${genderEnum1.name}");
  print("Gender Enum 2: ${genderEnum2.name}");

  print("");

  int genderFromServer1 = 1;
  int genderFromServer2 = 2;

  User user1 = User("Ovi", fromServer(genderFromServer1));
  User user2 = User("Nadia", fromServer(genderFromServer2));

  User user3 = User("Salam", GenderExtension.fromServer(genderFromServer1));
  User user4 = User("Zarin", GenderExtension.fromServer(genderFromServer2));

  print("User 1: ${user1.name}, Gender: ${user1.gender.name}");
  print("User 2: ${user2.name}, Gender: ${user2.gender.name}");

  print("User 3: ${user3.name}, Gender: ${user3.gender.name}");
  print("User 4: ${user4.name}, Gender: ${user4.gender.name}");

  print("");

  // Example 1: Days of Week
  print("1. Days of Week:");
  DayOfWeek today = DayOfWeek.saturday;
  print("Today: ${today.name} (${today.shortName})");
  print("Is weekday: ${today.isWeekday}");
  print("Next day: ${today.nextDay.name}");
}

/*
  KEY FEATURES OF DART ENUMS:
  1. Type Safety: Compile-time checking prevents invalid values
  2. Built-in Properties:
     - .name: String name of the enum value
     - .index: Zero-based index of the enum value
     - .values: List of all enum values
  3. Enhanced Enums (Dart 2.17+):
     - Can have constructors, methods, and properties
     - Can implement interfaces
     - Can have private members

  COMMON PATTERNS:
  - State machines (app states, order status)
  - Configuration options
  - Categories and types
  - Constants with behavior

  BEST PRACTICES:
  1. Use descriptive names for enum values
  2. Add methods for common operations
  3. Use switch statements for exhaustive handling
  4. Consider adding validation methods
  5. Group related constants together

  ADVANTAGES:
  - Prevents typos and invalid values
  - Self-documenting code
  - IDE auto-completion
  - Refactoring safety
  - Easy to extend functionality

  REMEMBER:
  - Enum values are compile-time constants
  - Use enhanced enums for complex behavior
  - Switch statements should handle all cases
  - Enum comparison uses identity (==)
*/
