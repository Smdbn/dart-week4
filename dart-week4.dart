import 'dart:io';

void main() {
  // String Manipulation
  String originalString = "Hello Dart";
  print("Original String: $originalString");

  // String Concatenation
  String concatenatedString = originalString + " - Let's code!";
  print("Concatenated String: $concatenatedString");

  // String Interpolation
  String name = "User";
  String interpolatedString = "Hello, $name! Welcome to Dart.";
  print("Interpolated String: $interpolatedString");

  // Substring Extraction
  String substring = originalString.substring(6, 10);
  print("Substring (6 to 10): $substring");

  // Case Conversion
  print("Uppercase: ${originalString.toUpperCase()}");
  print("Lowercase: ${originalString.toLowerCase()}");

  // String Reversal
  String reversedString = originalString.split('').reversed.join('');
  print("Reversed String: $reversedString");

  // String Length
  print("Length of Original String: ${originalString.length}");

  // Collections
  // List
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  fruits.add('Date');
  fruits.remove('Banana');
  print("List of Fruits: $fruits");

  // Set
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  numbers.remove(3);
  print("Set of Numbers: $numbers");

  // Map
  Map<String, int> ageMap = {'Alice': 30, 'Bob': 25};
  ageMap['Charlie'] = 35;
  ageMap.remove('Alice');
  print("Map of Ages: $ageMap");

  // File Handling
  String fileName = 'data.txt';
  String fileContent = 'File content written on ${DateTime.now()}';

  try {
    // Writing to a file
    File(fileName).writeAsStringSync(fileContent);
    print("Data written to $fileName");

    // Reading from a file
    String readContent = File(fileName).readAsStringSync();
    print("Data read from $fileName: $readContent");
  } catch (e) {
    print("An error occurred while handling the file: $e");
  }

  // Date and Time
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 10));
  DateTime pastDate = now.subtract(Duration(days: 10));

  print("Current DateTime: $now");
  print("Date 10 days in the future: $futureDate");
  print("Date 10 days in the past: $pastDate");

  Duration difference = futureDate.difference(pastDate);
  print("Difference between future and past date: ${difference.inDays} days");

  // Combining All
  String userInput =
      'Combine String Manipulation, Collections, File Handling, and Date/Time';
  List<String> results = [];
  results.add("Input: $userInput");
  results.add("Uppercase: ${userInput.toUpperCase()}");
  results.add("Reversed: ${userInput.split('').reversed.join('')}");
  results.add("Length: ${userInput.length}");

  String resultFileName = 'results.txt';
  String logContent = results.join('\n') + '\nLogged on: ${DateTime.now()}';

  try {
    // Writing combined results to a file
    File(resultFileName).writeAsStringSync(logContent);
    print("Results saved to $resultFileName");
  } catch (e) {
    print("An error occurred while saving the results: $e");
  }
}
