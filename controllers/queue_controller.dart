import '../models/queue.dart';
import '../models/patient.dart';
import '../views/views.dart';

void insert(Queue queue) {
  // creating a new patient
  Patient newPatient = insertPatientView(queue);
  // inserting the new patient on the queue
  queue.insertPatient(newPatient);
}

void edit(Queue queue) {
  //get index
  int index = queue.searchPatient();
  //get edited patient
  Patient editedPatient = editPatientView(queue, index);
  //put edited patient in list
  queue.editPatient(index, editedPatient);
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
