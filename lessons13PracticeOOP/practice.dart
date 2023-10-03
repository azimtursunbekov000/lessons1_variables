void main(List<String> args) {
  Nikola nikola = Nikola(name: "Nikola", age: 20);
  nikola.printNikola();
}

class Nikola {
  String name;
  int age;

  Nikola({required this.name, required this.age}) {
    if (name != "Nikola") {
      this.name = " я не $name a Никола";
    } else {
      this.name = name;
    }
    this.age = age;
  }
  printNikola() {
    print("$name");
  }
}
