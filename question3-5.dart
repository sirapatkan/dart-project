import 'dart:math'; // Import the dart:math library to generate random numbers
import 'dart:io'; // สำหรับรับข้อมูลจากผู้ใช้

// ฟังก์ชันเพื่อสร้างรหัสผ่านแบบสุ่ม
String generateRandomPassword(int length) {
  // กำหนดชุดอักขระที่ใช้ในการสร้างรหัสผ่าน
  const characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+-=[]{}|;:,.<>?';
  
  // สร้างตัวเลขสุ่ม (random)
  Random random = Random();
  
  // สร้างรหัสผ่านสุ่มตามความยาวที่กำหนด
  String password = '';
  for (int i = 0; i < length; i++) {
    int index = random.nextInt(characters.length); // สุ่ม index จากชุดอักขระ
    password += characters[index]; // เพิ่มอักขระที่สุ่มได้เข้าไปในรหัสผ่าน
  }
  
  return password;
}

void main() {
  // รับรหัสผ่านที่ผู้ใช้ใส่มา (เช่น "123456")
  print('Enter a number to determine the length of the password:');
  String? userInput = stdin.readLineSync();
  
  // ตรวจสอบว่าผู้ใช้ใส่ข้อมูลหรือไม่ และหาความยาวของรหัสผ่าน
  if (userInput != null && userInput.isNotEmpty) {
    int length = userInput.length; // ใช้ความยาวของรหัสที่ผู้ใช้ใส่มากำหนดความยาวของรหัสผ่าน
    // เรียกฟังก์ชันเพื่อสร้างรหัสผ่านสุ่ม
    String randomPassword = generateRandomPassword(length);
    
    // แสดงรหัสผ่านที่สร้างขึ้น
    print('Generated random password: $randomPassword');
  } else {
    print('Please enter a valid number for determining the password length.');
  }
}
