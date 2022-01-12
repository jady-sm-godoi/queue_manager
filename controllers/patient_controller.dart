import 'dart:io';

String getName() {
  stdout.write("\n insert name: ");
  return stdin.readLineSync()!;
}

String getGender() {
  String gender = "#";
  while (!"MmFf".contains(gender)) {
    print("\n M = 👨  F = 👩");
    stdout.write(" insert gender: ");
    gender = stdin.readLineSync()!;
    if (!"MmFf".contains(gender)) {
      print(" Unknow option. Try again!");
    }
  }
  return gender;
}

int getAge() {
  String age = "#";
  while (true) {
    stdout.write("\n insert age: ");
    age = stdin.readLineSync()!;
    if (int.tryParse(age) is int) {
      break;
    } else {
      print("Unknow value. Try again!");
    }
  }
  return int.parse(age);
}

int getLevel() {
  String level = "#";
  while (!"123".contains(level)) {
    print("\n 1 = 🟦  2 = 🟨  3 = 🟥");
    stdout.write(" insert level: ");
    level = stdin.readLineSync()!;
    if (!"123".contains(level)) {
      print("Unknow option. Try again!");
    }
  }
  return int.parse(level);
}
