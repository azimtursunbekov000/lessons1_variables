void main(List<String> args) {
  Student student = Student(
      firstName: "Azim",
      lastName: "Tursunbekov",
      group: "Flutter",
      averageMark: 5.0);
  print(student.getScholarship());

  Aspirant aspirant = Aspirant(
      firstName: "Erbol",
      lastName: "Orozbekov",
      group: "Flutter",
      averageMark: 4.9);
  print(aspirant.getScholarship());
}

class Student {
  String firstName;
  String lastName;
  String group;
  double averageMark;

  Student(
      {required this.firstName,
      required this.lastName,
      required this.group,
      required this.averageMark});

  String getScholarship() {
    int summ = 20000;
    if (averageMark == 5.0) {
      return "вы получаете стипендию в размере $summ";
    } else {
      return "0";
    }
  }
}

class Aspirant extends Student {
  Aspirant(
      {required super.firstName,
      required super.lastName,
      required super.group,
      required super.averageMark});

  @override
  String getScholarship() {
    int summ = 40000;
    if (averageMark == 5.0) {
      return "вы получаете стипендию в размере $summ сом";
    } else {
      return "вы получаете стипендию в размере 18000 сом";
    }
  }
}

class Animal {
  String food;
  String location;
  Animal({required this.food, required this.location});

  String makeNoise() {
    return "";
  }

  String eat() {
    return "ням-ням";
  }

  String sleep() {
    return "";
  }
}

class Dog extends Animal {
  Dog({required super.food, required super.location});
  @override
  String makeNoise() {
    return "гав-гав";
  }

  @override
  String eat() {
    return "чавкает ))";
  }

  @override
  String sleep() {
    return "собака спит";
  }
}
