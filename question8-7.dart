import 'dart:io';
import 'dart:async';

void main() async {
  // Taking input for the two integers
  print("Enter the first integer:");
  int? num1 = int.tryParse(stdin.readLineSync()!);
  
  print("Enter the second integer:");
  int? num2 = int.tryParse(stdin.readLineSync()!);

  // Check if both inputs are valid integers
  if (num1 == null || num2 == null) {
    print("Please enter valid integers.");
    return;
  }

  // Wait for 3 seconds
  await Future.delayed(Duration(seconds: 3));

  // Print the sum of the two integers
  int sum = num1 + num2;
  print("The sum of $num1 and $num2 is: $sum");
}
