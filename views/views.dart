import '../models/queue.dart';
import '../models/patient.dart';
import '../controllers/patient_controller.dart';
import 'dart:io';

void title(String title) {
  print("\n" + "=" * 80);
  print(title.toUpperCase());
  print("=" * 80);
}

void subTitle(String subTitle) {
  print("\n" + "-" * 80);
  print(subTitle);
  print("-" * 80);
}

void menu(String menu) {
  print("\n" + menu);
  print("-" * 80 + "\n");
}

Patient insertPatientView(Queue queue) {
  subTitle("Insert a new patient.");
  //building new patient for insert
  Patient newPatient = Patient(
    name: getName(),
    gender: getGender(),
    age: getAge(),
    level: getLevel(),
  );
  return newPatient;
}

Patient editPatientView(Queue queue, int index) {
  Patient editedPatient = queue.patients[index];

  subTitle("Edit patient: ${queue.patients[index].name}");

  while (true) {
    menu("[N]ame | [G]ender | [A]ge | [L]evel | e[X]it");
    stdout.write(" What field do you want to edit? ");
    String answer = stdin.readLineSync()!;

    if ("Nn".contains(answer)) {
      editedPatient.name = getName();
    } else if ("Gg".contains(answer)) {
      editedPatient.gender = getGender();
    } else if ("Aa".contains(answer)) {
      editedPatient.age = getAge();
    } else if ("Ll".contains(answer)) {
      editedPatient.level = getLevel();
    } else if ("Xx".contains(answer)) {
      break;
    } else {
      print("\n unknown option, try again.");
    }
  }

  return editedPatient;
}
