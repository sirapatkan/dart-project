import 'dart:io'; // Import the necessary library for input

// Function to create a user with name, age, and isActive status
void createUser(String name, int age, {bool isActive = true}) {
  // Print user details
  print('Name: $name');
  print('Age: $age');
  print('Active: $isActive');
}

void main() {
  // รับชื่อจากผู้ใช้
  print('Enter your name:');
  String? name = stdin.readLineSync();
  
  // รับอายุจากผู้ใช้
  print('Enter your age:');
  String? ageInput = stdin.readLineSync();
  int? age = int.tryParse(ageInput ?? '');  // แปลงค่าอายุจาก String เป็น int
  
  // ตรวจสอบข้อมูลที่กรอก
  if (name != null && age != null) {
    // ใช้ฟังก์ชัน createUser เพื่อลงข้อมูล
    createUser(name, age);
  } else {
    print('Invalid input! Please enter valid data.');
  }
}
