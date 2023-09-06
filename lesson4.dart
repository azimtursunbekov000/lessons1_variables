import 'dart:io';

void main(List<String> args) {
// //   // practice1
//   int a = 5;
//   double b = 5.126;
//   var c = a + b;
//   print("${a} + ${b} = $c");
// //   // 2
// //   // practice
//   int a1 = 5;
//   int b1 = 2;
//   int c1 = a1 + b1;
//   print("${a1} + ${b1} = $c1");
// //   // practice1
//   int a2 = 5;
//   int b2 = 2;
//   int c2 = a2 - b2;
//   print("${a2} - ${b2} = $c2");
// //   // practice2
//   int a3 = 132;
//   int b3 = 123;
//   int c3 = a3 * b3;
//   print("${a3} * ${b3} = $c3");
// //   // practice3
//   int a4 = 78;
//   int b4 = 2;
//   var c4 = a4 ~/ b4;
//   print("${a4} ÷ ${b4} = $c4");
// //   // practice4
//   int a5 = 78;
//   var b5 = 2.5;
//   var c5 = a5 ~/ b5;
//   print("${a5} ÷ ${b5} = $c5");
// //   // practice5
//   int a6 = 0;
//   var b6 = 5;
//   var c6 = a6 * b6;
//   print("${a6} * ${b6} = $c6");

// //   // 3
// //   // practice1
//   int a7 = 4;
//   int b7 = 5;
//   print("a7 = ${a7} -----> b7 = ${b7} ");
// //   // 4+5
//   a7 += b7;
// //   //  = 9-4
//   b7 = a7 - b7;
// //   // 9 -5
//   a7 -= b7;
//   print("a7= ${a7} <----- b7 = ${b7}");

// //   // 4
// //   // practice1

//   print("Введите ваше имя:");

//   String? userAnswer = stdin.readLineSync();
//   print("Ваш возраст:");
//   String? userAge = stdin.readLineSync();

//   print("Ваше имя $userAnswer, Ваш возраст $userAge");

// // //   // 5) Создайте программу, которая просит у пользователя номер. В зависимости от того,
// // // подходит номер по длине (является валидным), распечатайте соответствующее
// // // сообщение для пользователя.

//   // print("Введите ваш номер телефона");
//   // String? userPhoneNumber = stdin.readLineSync(); //996550567779

//   // if (userPhoneNumber.length == 12) {
//   //   print("успешно");
//   // } else {
//   //   print("провалено");
//   // }

// //   // 6Создайте программу, которая в зависимости от текущей погоды подсказывает вам
// // брать зонт или нет. (Подсказка: Нужно создать переменную bool и присвоить ей значение,
// // сделать с помощью тернарного оператора (? : )). НЕ СМОГ СДЕЛАТЬ ЧЕРЕЗ ТЕРНАРНЫЙ ОПЕРАТОР!!!!!!
//   print("Пожалуста, подскажите какая погода  сегодня");
//   String? pogoda = stdin.readLineSync();

//   if (pogoda == "da") {
//     print("Возьмите зонтик!");
//   } else {
//     pogoda == "no";
//     print("Зонт вам не нужен");
//   }

//   // 7Дано число. Если оно больше 3, то увеличить число на 10, иначе уменьшить на 10.
//   print('Введите число:');
//   var x = int.parse(stdin.readLineSync() ?? '0');
//   if (x > 3) {
//     print('Результат X + Y = ${x + 10}');
//   } else {
//     x < 3;
//     print('Результат X - Y = ${x - 10}');
//   }

//   // 8 Дано число. Если оно меньше 7, то вывести Yes, если больше 10, то вывести No, если
// // равно 9, то вывести Error.
//   print('Введите число:');
//   var y = int.parse(stdin.readLineSync() ?? '0');
//   if (y < 7) {
//     print("Yes");
//   }
//   if (y > 10) {
//     print("No");
//   } else {
//     y == 9;
//     print("Error");
//   }

// 9 Даны два числа. Вывести наибольшее из них.
  // print("Введите число1");
  // var x1 = int.parse(stdin.readLineSync() ?? '0');
  // print("Введите число2");
  // var y1 = int.parse(stdin.readLineSync() ?? '0');
  // if (x1 > y1) {
  //   print("\nmax is x=$x1");
  // } else {
  //   print("\nmax is y=$y1");
  // }

  // 10 Даны два числа. Вывести yes, если их сумма равна 100, иначе вывести No.
  // print("Введите число1");
  // var x2 = int.parse(stdin.readLineSync() ?? '0');
  // print("Введите число2");
  // var y2 = int.parse(stdin.readLineSync() ?? '0');
  // if (x2 + y2 == 100) {
  //   print("Yes");
  // } else {
  //   print("No");
  // }

  // 11 Пользователь вводит номер месяца. Вывести время года(весна, зима, лето)
  // print("Введите номер месяца");
  // var month = int.parse(stdin.readLineSync() ?? "0");
  // String res;
  // switch (month) {
  //   case 1:
  //   case 2:
  //   case 12:
  //     res = "Зима";
  //     break;
  //   case 3:
  //   case 4:
  //   case 5:
  //     res = "Весна";
  //     break;
  //   case 6:
  //   case 7:
  //   case 8:
  //     res = "Лето";
  //     break;
  //   case 9:
  //   case 10:
  //   case 11:
  //     res = "Осень";
  //     break;
  //   default:
  //     res = "Нет такого месяца!";
  // }
  // print(res);

  // 12 Даны три числа. Вывести на экран наименьшее из них.
  // print("Ввудите а");
  // var a11 = int.parse(stdin.readLineSync() ?? "0");
  // print("Ввудите b");
  // var b11 = int.parse(stdin.readLineSync() ?? "0");
  // print("Ввудите c");
  // var c11 = int.parse(stdin.readLineSync() ?? "0");

  // if (a11 < b11) {
  //   if (a11 < c11) {
  //     print("min $a11");
  //   }
  // } else {
  //   print("min $c11");
  // }
  // if (b11 < c11) {
  //   print("min $b11");
  // } else {
  //   print("min $c11");
  // }

  // 13 Дано трехзначное число. Переставьте первую и последнюю цифры.
  // int a22 = 123;
  // String b22 = a22.toString();
  // List c22 = b22.split("");
  // c22.insert(0, c22.last);
  // c22.insert(3, c22[3]);
  // c22.removeAt(3);
  // c22.removeAt(c22.length - 1);
  // print(c22);

  // 16
  var lines = 7;
  var str = " ";
  var star = "*";
  for (var i = 0; i < lines; i++) {
    str += star;
    print(str);
  }
}
