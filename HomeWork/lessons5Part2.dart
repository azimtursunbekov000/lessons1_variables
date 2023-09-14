import 'dart:io';

void main(List<String> args) {
  // У вас есть массив цифровых чисел, вернуть количество четных
// чисел содержащий данного массива (в том же порядке). Количество
// задется пользовотелем.
//   var even = 0;
//   var odd = 0;

//   List a = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   for (var i = 0; i < a.length; i++) {
//     if (a[i] % 2 == 0) {
//       even += 1;
//     } else {
//       odd += 1;
//     }
//     print("Even: $even Odd: $odd");
//   }
// //Пользователь вводит свой возраст. В зависимости от возраста поставить
// // правильно окончание.
//   print("введите ваш возраст");
//   int users_age = int.parse(stdin.readLineSync() ?? "");
//   if (users_age >= 5 && users_age < 20) {
//     print("$users_age лет");
//   } else if (users_age == 21) {
//     print("$users_age год");
//   } else if (users_age >= 22 && users_age <= 24) {
//     print("$users_age года");
//   } else {
//     print("$users_age лет");
//   }

  print("Введите n");
  var even = 0;
  var odd = 0;
  int? n = int.parse(stdin.readLineSync() ?? " ");
  List array = [];
  for (int i = 0; i < n; i++) {
    array.add(stdin.readLineSync());
  }
  print(array);
  // for (int i = 0; i < array.length; i++) {
  //   if (array[i] % 2 == 0) {
  //     even += 1;
  //   } else {
  //     odd += 1;
  //   }
  // }
}
