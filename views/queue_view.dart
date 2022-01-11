import '../models/queue.dart';
import '../models/patient.dart';
import '../controllers/patient_controller.dart';
import 'dart:io';

Patient insertPatientView(Queue queue) {
  //building new patient for insert
  Patient newPatient = Patient(
    name: PatientController.getName(),
    gender: PatientController.getGender(),
    age: PatientController.getAge(),
    level: PatientController.getLevel(),
  );

  return newPatient;
}

Patient editPatientView(Queue queue, int index) {
  Patient editedPatient = queue.patients[index];
  print("\n" + "=" * 80);
  print("EDIT PATIENT");
  print("=" * 80);
  print("\nenter with new data:");

  while (true) {
    print("[N]ame | [G]ender | [A]ge | [L]evel | e[X]it");
    stdout.write("\n What field do you want to edit? ");
    String answer = stdin.readLineSync()!;

    if ("Nn".contains(answer)) {
      editedPatient.name = PatientController.getName();
    } else if ("Gg".contains(answer)) {
      editedPatient.gender = PatientController.getGender();
    } else if ("Aa".contains(answer)) {
      editedPatient.age = PatientController.getAge();
    } else if ("Ll".contains(answer)) {
      editedPatient.level = PatientController.getLevel();
    } else if ("Xx".contains(answer)) {
      break;
    } else {
      print("\n unknown option, try again.");
    }
  }

  return editedPatient;
}
