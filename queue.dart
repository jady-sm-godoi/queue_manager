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
    print("-" * 80);
    print("LIST OF PATIENTS");
    print("-" * 80 + "\n");

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

    //ordering list
    int index = orderingList(newPatient);

    //inserting
    // this.patients.add(newPatient);
    this.patients.insert(index, newPatient);
  }

  int searchPatient() {
    listPatients();
    stdout.write("enter with patient index: ");
    int index = int.parse(stdin.readLineSync()!);

    return index - 1;
  }

  void editPatient() {
    print("=" * 80);
    print("EDIT PATIENT");
    print("=" * 80 + "\n");

    int index = searchPatient();
    while (true) {
      print("[N]ame | [G]ender | [A]ge | [L]evel | e[X]it");
      stdout.write("What field do you want to edit? ");
      String answer = stdin.readLineSync()!;

      if ("Nn".contains(answer)) {
        stdout.write("insert name: ");
        String newName = stdin.readLineSync()!;
        this.patients[index].name = newName;
      } else if ("Gg".contains(answer)) {
        stdout.write("insert gender: ");
        String newGender = stdin.readLineSync()!;
        this.patients[index].gender = newGender;
      } else if ("Aa".contains(answer)) {
        stdout.write("insert age: ");
        int newAge = int.parse(stdin.readLineSync()!);
        this.patients[index].age = newAge;
      } else if ("Ll".contains(answer)) {
        stdout.write("insert level: ");
        int newLevel = int.parse(stdin.readLineSync()!);
        this.patients[index].level = newLevel;
      } else if ("Xx".contains(answer)) {
        break;
      } else {
        print("\nunknown option, try again.");
      }
    }
  }

  void callPatient() {
    print("=" * 80);
    print("NEXT PATIENT: ${patients[0]}");
    print("=" * 80 + "\n");

    patients.removeAt(0);
  }

  void deletePatient() {
    print("=" * 80);
    print("DELETE PATIENT");
    print("=" * 80 + "\n");

    int index = searchPatient();
    stdout.write("Are you sure want delete ${this.patients[index]}? S/N ");
    String answer = stdin.readLineSync()!;

    if ("Ss".contains(answer)) {
      patients.removeAt(index);
    }
  }

  int orderingList(newPatient) {
    int i = 0;
    if (patients.length == 0) {
      return i;
    }
    while (i < patients.length) {
      if (patients[i].level! > newPatient.level) {
        i++;
      } else if (patients[i].level! == newPatient.level) {
        if (patients[i].age! >= newPatient.age) {
          i++;
        } else {
          break;
        }
      } else {
        break;
      }
    }
    return i;
  }
}
