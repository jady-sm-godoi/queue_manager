import 'dart:io';

class PatientController {
  static String getName() {
    stdout.write("\n insert name: ");
    return stdin.readLineSync()!;
  }

  static String getGender() {
    print("\n M = 👨  F = 👩");
    stdout.write(" insert gender: ");
    return stdin.readLineSync()!;
  }

  static int getAge() {
    stdout.write("\n insert age: ");
    return int.parse(stdin.readLineSync()!);
  }

  static int getLevel() {
    print("\n 1 = 🟦  2 = 🟨  3 = 🟥");
    stdout.write(" insert level: ");
    return int.parse(stdin.readLineSync()!);
  }
}
