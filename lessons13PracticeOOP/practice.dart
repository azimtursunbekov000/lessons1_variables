void main(List<String> args) {
  Nikola nikola = Nikola(name: "Nikola", age: 20);
  nikola.printNikola();

  //
  Math math = Math(a: 4, b: 3);
  print(math.addition());

  //
  Car car = Car(color: "white", type: "b", year: 2000);
  print(car.yearOfRelease());

  //
  TriangleChecker triangleChecker = TriangleChecker(a: 1, b: 1, c: 4.2);
  print(triangleChecker.is_triangle());

  //

  MyString myString = MyString();

  String originalString = "hello";
  String reversedString = myString.reverse(originalString);
  String ucFirstString = myString.ucFirst(originalString);

  print("Перевернутая: $reversedString");
  print("Первая буква с заглавной: $ucFirstString");
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

class Math {
  int a;
  int b;
  Math({required this.a, required this.b});

  int addition() {
    return a + b;
  }

  int multiplication() {
    return a * b;
  }

  int division() {
    return a ~/ b.round();
  }

  int subtraction() {
    return a - b;
  }
}

class Car {
  String color;
  String type;
  int year;
  Car({required this.color, required this.type, required this.year});

  printStart() {
    print("«Автомобиль заведен»");
  }

  printDisabling() {
    print("«Автомобиль заглушен»");
  }

  String yearOfRelease() {
    this.year = 2012;
    return "год автомобиля $year";
  }

  String aTypeToACar() {
    this.type = "bc";
    return "тип автомобиля $type";
  }

  String colorAssignment() {
    this.color = "Red";
    return "цвет машины $color";
  }
}

class TriangleChecker {
  double a;
  double b;
  double c;
  TriangleChecker({required this.a, required this.b, required this.c});

  String is_triangle() {
    if (a <= 0 || b <= 0 || c <= 0) {
      return "С отрицательными числами ничего не выйдет!";
    } else if (!(a is num) || !(b is num) || !(c is num)) {
      return "Нужно вводить только числа!";
    } else if (a + b > c && a + c > b && b + c > a) {
      return "Ура, можно построить треугольник!";
    } else {
      return "Жаль, но из этого треугольник не сделать.";
    }
  }
}

class MyString {
  String reverse(String input) {
    return String.fromCharCodes(input.runes.toList().reversed);
  }

  String ucFirst(String input) {
    if (input.isEmpty) {
      return input;
    }
    return '${input[0].toUpperCase()}${input.substring(1)}';
  }
}
