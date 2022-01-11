import 'package:test/test.dart';
import '../patient.dart';

void main() {
  test("insert a patient without arguments", () {
    Patient p1 = Patient();
    expect(p1.toString(), equals("🟦  👨  Patient (0)"));
  });

  test("insert a patient with name", () {
    Patient p1 = Patient(name: "Jady");
    expect(p1.toString(), equals("🟦  👨  Jady (0)"));
  });

  test('insert a patient with arguments', () {
    Patient p1 = Patient(name: "Cesar", gender: "M", age: 51, level: 1);
    expect(p1.toString(), equals("🟦  👨  Cesar (51)"));
  });
}
