import 'dart:io'; // Import the necessary library for input

// ฟังก์ชัน calculateArea เพื่อคำนวณพื้นที่ของสี่เหลี่ยมผืนผ้า
double calculateArea({double length = 1, double width = 1}) {
  // คำนวณพื้นที่โดยใช้สูตร length * width
  return length * width;
}

void main() {
  // รับค่าความยาวจากผู้ใช้
  print('Enter the length of the rectangle:');
  double? length = double.tryParse(stdin.readLineSync() ?? ''); // รับค่าเป็นตัวเลข

  // รับค่าความกว้างจากผู้ใช้
  print('Enter the width of the rectangle:');
  double? width = double.tryParse(stdin.readLineSync() ?? ''); // รับค่าเป็นตัวเลข

  // ตรวจสอบว่าได้ค่าเป็นตัวเลขถูกต้องหรือไม่
  if (length != null && width != null) {
    // คำนวณพื้นที่ด้วยฟังก์ชัน calculateArea
    double area = calculateArea(length: length, width: width);
    print('The area of the rectangle is: $area');
  } else {
    print('Invalid input! Please enter valid numbers for length and width.');
  }
}
