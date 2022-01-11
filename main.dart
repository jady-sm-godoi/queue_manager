import 'dart:io';
import 'models/queue.dart';
import 'controllers/queue_controller.dart';

void main() {
  Queue queue = Queue();
  print("Welcome to the show!");

  while (true) {
    print("\n[L]ist  [I]nsert  [E]dit  [C]all  [D]elete  e[X]it\n");
    stdout.write("Enter your option: ");
    String option = stdin.readLineSync()!;

    if ("Ll".contains(option)) {
      queue.listPatients();
    } else if ("Ii".contains(option)) {
      QueueController.insert(queue);
    } else if ("Ee".contains(option)) {
      QueueController.edit(queue);
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
