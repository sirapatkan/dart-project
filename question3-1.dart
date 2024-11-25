import 'dart:io'; // Import the necessary library for input

double maxNumber(double num1, double num2, double num3) {
  // Using ternary operator to find the largest number
  return (num1 > num2)
      ? (num1 > num3 ? num1 : num3)
      : (num2 > num3 ? num2 : num3);
}

void main() {
  // Prompt the user to enter the first number
  print('Enter the first number:');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  // Prompt the user to enter the second number
  print('Enter the second number:');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  // Prompt the user to enter the third number
  print('Enter the third number:');
  double? num3 = double.tryParse(stdin.readLineSync() ?? '');

  // Check if all numbers are valid
  if (num1 != null && num2 != null && num3 != null) {
    // Call maxNumber function to get the largest number
    double largest = maxNumber(num1, num2, num3);
    print('The largest number is: $largest');
  } else {
    print('Invalid input! Please enter valid numbers.');
  }
}
