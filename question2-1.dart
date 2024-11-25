import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');
  
  // Read the input from the user and convert it to an integer
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}
