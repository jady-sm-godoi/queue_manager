class Patient {
  String name;
  String gender;
  int age;
  int level;

  Patient({
    this.name = "Patient",
    this.gender = "M",
    this.age = 0,
    this.level = 1,
  });

  @override
  String toString() {
    String level = "";
    switch (this.level) {
      case 1:
        level = "🟦";
        break;
      case 2:
        level = "🟨";
        break;
      case 3:
        level = "🟥";
        break;
    }

    String gender = "Mm".contains(this.gender) ? "👨" : "👩";

    return "$level  $gender  ${this.name} (${this.age})";
  }
}
