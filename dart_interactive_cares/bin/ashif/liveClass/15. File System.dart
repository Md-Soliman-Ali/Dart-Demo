import 'dart:convert';
import 'dart:io';

/// Key Concepts:
// 1. File: A container for storing data
// 2. Directory: A container for storing files and other directories
// 3. Path: The location of a file or directory in the file system
// 4. Stream: A sequence of data that can be read asynchronously

void main() async {
  /// 1. Read and Write Files
  Future<void> demonstrateFileOperations() async {
    print('\n1. Reading and Writing Files');

    // Create a new file
    final file = File('example.txt');

    // Write to file
    try {
      await file.writeAsString('Hello, this is a test file!\n');
      await file.writeAsString('This is a second line.', mode: FileMode.append);
      print('File written successfully');

      // Read from file
      String contents = await file.readAsString();
      print('File contents: $contents');

      // Read file line by line
      print('\nReading file line by line:');
      await for (String line in file
          .openRead()
          .transform(utf8.decoder)
          .transform(LineSplitter())) {
        print('Line: $line');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  /// 2. Delete, Rename, and Check File Existence
  Future<void> demonstrateFileManagement() async {
    print('\n2. File Management Operations');

    final file = File('example.txt');

    // Check if file exists
    bool exists = await file.exists();
    print('File exists: $exists');

    // Rename file
    try {
      final newFile = await file.rename('renamed_example.txt');
      print('File renamed to: ${newFile.path}');

      // Delete file
      await newFile.delete();
      print('File deleted successfully');
    } catch (e) {
      print('Error: $e');
    }
  }

  /// 3. Create and Delete Directories
  Future<void> demonstrateDirectoryOperations() async {
    print('\n3. Directory Operations');

    // Create a new directory
    final directory = Directory('test_directory');
    try {
      await directory.create();
      print('Directory created: ${directory.path}');

      // Create nested directories
      final nestedDir = Directory('test_directory/nested/further');
      await nestedDir.create(recursive: true);
      print('Nested directories created');

      // Delete directory
      await directory.delete(recursive: true);
      print('Directory deleted successfully');
    } catch (e) {
      print('Error: $e');
    }
  }

  /// 4. Create File List in Directory
  Future<void> demonstrateDirectoryListing() async {
    print('\n4. Directory Listing');

    // Create a directory with some files
    final directory = Directory('list_example');
    await directory.create();

    // Create some files
    await File('${directory.path}/file1.txt').writeAsString('File 1');
    await File('${directory.path}/file2.txt').writeAsString('File 2');
    await Directory('${directory.path}/subdir').create();

    // List directory contents
    try {
      print('Directory contents:');
      await for (FileSystemEntity entity in directory.list(recursive: true)) {
        print('${entity.path} (${entity is File ? 'File' : 'Directory'})');
      }

      // Delete directory
      await directory.delete(recursive: true);
    } catch (e) {
      print('Error: $e');
    }
  }

  /// Run all examples
  await demonstrateFileOperations();
  await demonstrateFileManagement();
  await demonstrateDirectoryOperations();
  await demonstrateDirectoryListing();
}
