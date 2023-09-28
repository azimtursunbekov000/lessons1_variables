import 'dart:html';

void main(List<String> args) {
  cub();
  sum();
  number();
  numbers(0);
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
  print("=============================================================");
}

cub() {
  List<int> myArray = List.generate(11, (index) => index);
  myArray.forEach((element) {
    int cub = element * element * element;
    print(cub);
  });
  print("=============================================================");
}

sum() {
  List<int> myArray = List.generate(11, (index) => index);
  myArray.forEach((element) {
    int sum = 0;
    sum = element + element;
    print(sum);
  });
  print("=====================================================1111111=======");
}

number() {
  List myList = [1, 2, 3, 4, 5, 6, 7, 9, 10];
  List isEven = myList.where((element) => element % 2 == 0).toList();
  print(isEven);
}

numbers(int sum) {
  List myList = [1, 2, 3, 4, 0, 5, 6, 7, 9, 10];
}
