import 'dart:io';
import '../models/queue.dart';
import '../models/patient.dart';

class QueueView {
  Patient insertPatient(Queue queue) {
    //capturing data from user -> view
    stdout.write("\n insert name: ");
    String name = stdin.readLineSync()!;

    print("\n M = 👨  F = 👩");
    stdout.write(" insert gender: ");
    String gender = stdin.readLineSync()!;

    stdout.write("\n insert age: ");
    int age = int.parse(stdin.readLineSync()!);

    print("\n 1 = 🟦  2 = 🟨  3 = 🟥");
    stdout.write(" insert level: ");
    int level = int.parse(stdin.readLineSync()!);

    //building new patient for insert
    Patient newPatient = Patient(
      name: name,
      gender: gender,
      age: age,
      level: level,
    );

    return newPatient;
  }
}
