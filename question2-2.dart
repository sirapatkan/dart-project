import 'dart:io';

void main() {
  
  print('Enter a character:');
  
  
  String? character = stdin.readLineSync();
  
  
  if (character != null && character.length == 1) {
    
    character = character.toLowerCase();

    
    if (character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u') {
      print('$character is a vowel');
    } else {
      
      print('$character is a consonant');
    }
  } else {
    print('Please enter a valid single character.');
  }
}
