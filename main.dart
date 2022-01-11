import 'dart:io';
import 'queue.dart';

void main() {
  Queue queue = Queue();
  print("Welcome to the show!");

  while (true) {
    print("[L]ist  [I]nsert  [E]dit  [C]all  [D]elete  e[X]it");
    stdout.write("Enter your option: ");
    String option = stdin.readLineSync()!;

    if ("Ll".contains(option)) {
      queue.listPatients();
    } else if ("Ii".contains(option)) {
      queue.insertPatient();
    } else if ("Ee".contains(option)) {
      queue.editPatient();
    } else if ("Cc".contains(option)) {
      queue.callPatient();
    } else if ("Dd".contains(option)) {
      queue.deletePatient();
    } else if ("Xx".contains(option)) {
      print("Exit");
      break;
    } else {
      print("Unknown option. Please, try again.");
    }
  }
}
