class Patient {
  String name;
  String gender;
  int age;
  int level;

  Patient({
    required this.name,
    required this.gender,
    required this.age,
    required this.level,
  });

  @override
  String toString() {
    String gender = "Mm".contains(this.gender) ? "Male" : "Female";
    return "L-${this.level}  $gender  ${this.name} (${this.age})";
  }
}
