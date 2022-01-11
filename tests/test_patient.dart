import 'dart:math';

import 'package:test/test.dart';
import '../patient.dart';

void main() {
  test("creating a patient without arguments", () {
    Patient p1 = Patient();
    expect(p1.toString(), equals("🟦  👨  Patient (0)"));
  });

  test("creating a patient with name", () {
    Patient p1 = Patient(name: "Jady");
    expect(p1.toString(), equals("🟦  👨  Jady (0)"));
  });

  test("creating a patient with female gender and age", () {
    Patient p1 = Patient(gender: "F", age: 36);
    expect(p1.toString(), equals("🟦  👩  Patient (36)"));
  });

  test("insert arguments on a new patient", () {
    Patient p1 = Patient();
    p1.name = "Zeca";
    p1.age = 2;
    p1.level = 3;
    expect(p1.toString(), equals("🟥  👨  Zeca (2)"));
  });

  test('creating a patient with arguments', () {
    Patient p1 = Patient(name: "Cesar", gender: "M", age: 51, level: 1);
    expect(p1.toString(), equals("🟦  👨  Cesar (51)"));
  });
}
