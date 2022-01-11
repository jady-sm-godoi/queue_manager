class Patient {
  String? name;
  String? gender;
  int? age;
  int? level;

  Patient({this.name, this.gender, this.age, this.level});

  @override
  String toString() {
    if (this.name != null &&
        this.gender != null &&
        this.age != null &&
        this.level != null) {
      String gender = "Mm".contains(this.gender!) ? "Male" : "Female";
      return "L-${this.level}  $gender  ${this.name} (${this.age})";
    } else {
      return "Instance of 'Patient'";
    }
  }
}
