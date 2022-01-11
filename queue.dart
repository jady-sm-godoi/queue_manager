import 'dart:io';
import 'patient.dart';

class Queue {
  List<Patient> patients = [
    // Patient(
    //   name: 'Zeca',
    //   gender: 'M',
    //   age: 2,
    //   level: 0,
    // )
  ];

  void listPatients() {
    print("=" * 80);
    print("LIST OF PATIENTS");
    print("=" * 80 + "\n");

    for (var i = 0; i < this.patients.length; i++) {
      print(' ${i + 1} - ${this.patients[i]}');
    }
  }

  void insertPatient() {
    //capturing data from user -> view
    stdout.write("insert name: ");
    String name = stdin.readLineSync()!;

    stdout.write("insert gender (F/M): ");
    String gender = stdin.readLineSync()!;

    stdout.write("insert age: ");
    int age = int.parse(stdin.readLineSync()!);

    stdout.write("insert level (0, 1, 2): ");
    int level = int.parse(stdin.readLineSync()!);

    //building new patient for insert
    Patient newPatient = Patient(
      name: name,
      gender: gender,
      age: age,
      level: level,
    );

    //inserting
    this.patients.add(newPatient);
  }

  void editPatient(index) {
    //edit patient
    //search for index
  }

  void callPatient() {
    print("=" * 80);
    print("NEXT PATIENT: ${patients[0]}");
    print("=" * 80 + "\n");
    //deletePatient(0);
  }

  void deletePatient(index) {
    //build search patient by index here.
    // patients.removeAt(index);
  }

  void orderingList() {
    //order patients list
  }
}
