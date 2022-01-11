import 'dart:io';
import 'patient.dart';
import '../controllers/queue_controller.dart';

class Queue {
  List<Patient> patients = [];

  void listPatients() {
    print("-" * 80);
    print("LIST OF PATIENTS");
    print("-" * 80 + "\n");

    for (var i = 0; i < this.patients.length; i++) {
      print(' ${i + 1} - ${this.patients[i]}');
    }
  }

  void insertPatient(Patient patient) {
    // get new index for new patient
    int newIndex = QueueController.orderingList(this, patient);
    // insert new patient
    this.patients.insert(newIndex, patient);
  }

  int searchPatient() {
    listPatients();
    stdout.write("enter with patient index: ");
    int index = int.parse(stdin.readLineSync()!);

    return index - 1;
  }

  void editPatient(int index, Patient editedPatient) {
    // remove patient
    this.patients.removeAt(index);
    // insert edited patient
    this.insertPatient(editedPatient);
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
}
