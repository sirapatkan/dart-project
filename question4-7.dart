void main() {
  // Create a map with names as keys and phone numbers as values
  Map<String, String> phoneBook = {
    'John': '123-456-789',
    'sara': '456-789-123',
    'willism': '7899',
    'Johnson': '789-123-456',
  };

  // Print the original phonebook
  print("phonebook: $phoneBook");

  // Remove entries where the key or value length is 4
  phoneBook.removeWhere((key, value) => key.length == 4 || value.length == 4);

  // Print the updated phonebook
  print("updated phonebook: $phoneBook");
}
