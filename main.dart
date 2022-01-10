import 'dart:io';
import 'patient.dart';

void main() {
  print("Welcome to the show!");

  while (true) {
    print("[L]ist  [I]nsert  [E]dit  [C]all  [D]elete  e[X]it");
    stdout.write("Enter your option: ");
    String option = stdin.readLineSync()!;

    if ("Ll".contains(option)) {
      print("List patients");
    } else if ("Ii".contains(option)) {
      print("Insert patient");
    } else if ("Ee".contains(option)) {
      print("Edit patient");
    } else if ("Cc".contains(option)) {
      print("Calling patient...");
    } else if ("Dd".contains(option)) {
      print("Delete");
    } else if ("Xx".contains(option)) {
      print("Exit");
      break;
    } else {
      print("Unknown option. Please, try again.");
    }
  }
}
