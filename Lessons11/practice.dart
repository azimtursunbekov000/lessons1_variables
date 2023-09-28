void main(List<String> args) {
  cub();
  sum();
  number();
  numbers();
  List<String> fruits = ['azim', 'erbol', 'erjjan', 'aman'];

  // Сортировка по "a-z"
  fruits.sort();

  print(fruits);
  print("=============================================================");

  fruits.sort((a, b) => b.compareTo(a));
  print(fruits);
  print("=============================================================");

  fruits.sort((a, b) => a.length.compareTo(b.length));
  print(fruits);
  print("=============================================================");

  List<int> myArray = List.generate(11, (index) => index);
  myArray.forEach((element) {
    print(element);
  });
  print("============================================================= ");
}

cub() {
  List<int> myArray = List.generate(11, (index) => index);
  myArray.forEach((element) {
    int cub = element * element * element;
    print(cub);
  });
  print("============================================================= cub");
}

sum() {
  List<int> myArray = List.generate(11, (index) => index);
  myArray.forEach((element) {
    int sum = 0;
    sum = element + element;
    print(sum);
  });
  print("============================================================ sum");
}

number() {
  List myList = [1, 2, 3, 4, 5, 6, 7, 9, 10];
  List isEven = myList.where((element) => element % 2 == 0).toList();
  print(isEven);
}

numbers() {
  List<int> myList = [1, 2, 3, 4, 0, 5, 6, 7, 9, 10];
  bool isBreake = false;
  int sum = myList.reduce((value, element) {
    if (isBreake || value == 0 || element == 0) {
      isBreake == true;
      return value;
    } else {
      return value + element;
    }
  });
  print(sum);
}
