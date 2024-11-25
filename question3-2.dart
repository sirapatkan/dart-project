import 'dart:io';

// ฟังก์ชันเพื่อตรวจสอบว่าเลขเป็นเลขคู่หรือไม่
bool isEven(int number) {
  // คืนค่า true หากเลขเป็นเลขคู่
  return number % 2 == 0;
}

void main() {
  // รับค่าจากผู้ใช้
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  // ตรวจสอบว่า input ไม่ใช่ null และแปลงเป็นเลขจำนวนเต็ม
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);

    // ตรวจสอบว่าเลขนั้นเป็นเลขคู่หรือไม่และแสดงผล
    bool result = isEven(number);
    print('Is the number even? $result'); // แสดงผลเป็น true หรือ false
  } else {
    print('Invalid input! Please enter a valid number.');
  }
}
