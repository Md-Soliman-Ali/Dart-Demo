import 'dart:io';

void addTask(List<Map<String, dynamic>> tasks) {
  print('\n--- Add New Task ---');

  // Get task description
  print('Enter task description: ');
  String? description = stdin.readLineSync();

  if (description == null || description.trim().isEmpty) {
    print('❌ Task description cannot be empty!');
    return;
  }

  // Create task map
  Map<String, dynamic> task = {
    'id': tasks.length + 1,
    'description': description.trim(),
    'completed': false,
    'createdAt': DateTime.now(),
  };

  // Add to tasks list
  tasks.add(task);
  print('✅ Task added successfully! (ID: ${task['id']})');
}

void viewTasks(List<Map<String, dynamic>> tasks) {
  print('\n--- All Tasks ---');

  if (tasks.isEmpty) {
    print('📝 No tasks found. Add some tasks first!');
    return;
  }

  // Display all tasks
  for (Map<String, dynamic> task in tasks) {
    String status = task['completed'] ? '✅' : '⏳';
    String completedText = task['completed'] ? 'Completed' : 'Pending';

    print('${task['id']}. $status ${task['description']} - $completedText');
  }

  // Show statistics
  int completedCount = tasks.where((task) => task['completed']).length;
  int pendingCount = tasks.length - completedCount;

  print('\n📊 Statistics:');
  print('Total Tasks: ${tasks.length}');
  print('Completed: $completedCount');
  print('Pending: $pendingCount');
}

void showMenu() {
  print('\n--- TO-DO List Menu ---');
  print('1. Add Task');
  print('2. View All Tasks');
  print('3. Mark Task as Complete');
  print('4. Remove Task');
  print('5. View Completed Tasks');
  print('6. Exit');
  print('Enter your choice (1-6): ');
}

int? getTaskId() {
  while (true) {
    print('Enter task ID: ');
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('❌ Please enter a valid task ID!');
      continue;
    }

    int? taskId = int.tryParse(input);
    if (taskId == null) {
      print('❌ Please enter a valid number!');
      continue;
    }

    if (taskId <= 0) {
      print('❌ Task ID must be greater than 0!');
      continue;
    }

    return taskId;
  }
}

void viewCompletedTasks(List<Map<String, dynamic>> tasks) {
  print('\n--- Completed Tasks ---');

  List<Map<String, dynamic>> completedTasks =
      tasks.where((task) => task['completed']).toList();

  if (completedTasks.isEmpty) {
    print('📝 No completed tasks found.');
    return;
  }

  // Display completed tasks
  for (Map<String, dynamic> task in completedTasks) {
    print('${task['id']}. ✅ ${task['description']}');
  }

  print('\nTotal completed: ${completedTasks.length}');
}

void removeTask(List<Map<String, dynamic>> tasks) {
  print('\n--- Remove Task ---');

  if (tasks.isEmpty) {
    print('📝 No tasks found. Add some tasks first!');
    return;
  }

  // Show all tasks
  print('All Tasks:');
  for (Map<String, dynamic> task in tasks) {
    String status = task['completed'] ? '✅' : '⏳';
    print('${task['id']}. $status ${task['description']}');
  }

  // Get task ID to remove
  int? taskId = getTaskId();
  if (taskId == null) return;

  // Find and remove task
  Map<String, dynamic>? taskToRemove = tasks.firstWhere(
    (task) => task['id'] == taskId,
    orElse: () => <String, dynamic>{},
  );

  if (taskToRemove.isEmpty) {
    print('❌ Task not found!');
    return;
  }

  tasks.remove(taskToRemove);
  print('🗑️ Task removed successfully!');
}

void markTaskComplete(List<Map<String, dynamic>> tasks) {
  print('\n--- Mark Task as Complete ---');

  if (tasks.isEmpty) {
    print('📝 No tasks found. Add some tasks first!');
    return;
  }

  // Show pending tasks only
  List<Map<String, dynamic>> pendingTasks =
      tasks.where((task) => !task['completed']).toList();

  if (pendingTasks.isEmpty) {
    print('🎉 All tasks are already completed!');
    return;
  }

  print('Pending Tasks:');
  for (Map<String, dynamic> task in pendingTasks) {
    print('${task['id']}. ${task['description']}');
  }

  // Get task ID to mark complete
  int? taskId = getTaskId();
  if (taskId == null) return;

  // Find and mark task as complete
  Map<String, dynamic>? taskToUpdate = tasks.firstWhere(
    (task) => task['id'] == taskId && !task['completed'],
    orElse: () => <String, dynamic>{},
  );

  if (taskToUpdate.isEmpty) {
    print('❌ Task not found or already completed!');
    return;
  }

  taskToUpdate['completed'] = true;
  print('✅ Task marked as complete!');
}

void main() {
  print('✅ Welcome to TO-DO List Manager! ✅');
  print('Organize your tasks efficiently.');

  // List to store tasks with status
  List<Map<String, dynamic>> tasks = [];

  // Main program loop
  while (true) {
    showMenu();
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addTask(tasks);
        break;
      case '2':
        viewTasks(tasks);
        break;
      case '3':
        markTaskComplete(tasks);
        break;
      case '4':
        removeTask(tasks);
        break;
      case '5':
        viewCompletedTasks(tasks);
        break;
      case '6':
        print('👋 Thanks for using TO-DO List Manager!');
        return;
      default:
        print('❌ Invalid choice! Please try again.');
    }
  }
}
