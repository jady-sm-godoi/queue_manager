import 'dart:io';
import '../models/queue.dart';
import '../models/patient.dart';
import '../views/queue_view.dart';

class QueueController {
  void insert(Queue queue) {
    // creating a new patient
    Patient newPatient = QueueView().insertPatient(queue);

    // choose the last index
    int index = orderingList(queue, newPatient);

    // inserting the new patient on the queue
    queue.insertPatient(index, newPatient);
  }

  int orderingList(Queue queue, Patient patient) {
    int i = 0;
    if (queue.patients.length == 0) {
      return i;
    }
    while (i < queue.patients.length) {
      if (queue.patients[i].level > patient.level) {
        i++;
      } else if (queue.patients[i].level == patient.level) {
        if (queue.patients[i].age >= patient.age) {
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
