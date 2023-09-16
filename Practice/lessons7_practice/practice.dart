import 'dart:io';

void main(List<String> args) {
//   print("Введите n");
//   int? n = int.parse(stdin.readLineSync() ?? " ");
//   List array = [];
//   for (int i = 0; i < n; i++) {
//     array.add(stdin.readLineSync());
//   }
//   print(" $array ${array.first} ${array.last}");
// // 2//
  var abc = 357;
  int res = 0;
  String c = abc.toString();
  for (int i = 0; i < c.length; i++) {
    if (res == 0) {
      res = int.parse(c[i]);
    } else {
      res *= int.parse(c[i]);
      print(res);
    }
  }
  // 3 Дано трехзначное число. Замените среднюю цифру на ноль.

  var a = 345;

  String b = a.toString();
  List array = b.split("");
  array[1] = "0";
  print(array);

  /* 4Дан номер дня недели. Выведите название дня недели. Решение через if и
switch case.*/
  var number_of_the_day = 4;
  String ress;
  switch (number_of_the_day) {
    case 1:
      ress = "понедельник";
      break;
    case 2:
      ress = "вторник";
      break;
    case 3:
      ress = "среда";
      break;
    case 4:
      ress = "четверг";
      break;
    case 5:
      ress = "пятница";
      break;
    case 6:
      ress = "суббота";
      break;
    case 7:
      ress = "воскресенье";
      break;
    default:
      ress = "нету такого дня";
  }
  print(ress);

  // 5) Вывести на экран 8 раз фразу "Loading...". Используйте цикл for

  for (int i = 0; i <= 8; i++) {
    print("Loading");
  }

  /*6 Даны три числа. Если сумма двух из них равна третьему, то выведите
такое равенство, если нет, то выведите произведение всех чисел.*/
  // Даны три числа. Если сумма двух из них равна третьему, то выведите такое равенство, если нет, то выведите произведение всех чисел.

  int rttt = 333;
  String rttt1 = rttt.toString();
  int rt1 = int.parse(rttt1[0]);
  int rt2 = int.parse(rttt1[1]);
  int rt3 = int.parse(rttt1[2]);
  int rt4 = rt1 * rt2 * rt3;

  if (rt1 + rt2 == rt3) {
    print('$rt1 + $rt2 = $rt3');
  } else {
    print(rt4);
  }

  // Анкета. С помощью stdin sdout реализуйте программу, которая запрашивает у пользователя имя, возраст, адрес, хобби. В конечном итоге вывести на экран информацию о пользователе:

  print('Ваше имя:');
  String name = stdin.readLineSync() ?? "";
  String name1 = name.trim();
  String nameFinish = name1.replaceAll(RegExp('[0-9]'), '');

  print('Ваш возраст:');
  String age = stdin.readLineSync() ?? "";
  String age1 = age.trim();
  String ageFinish = age1.replaceAll(RegExp('[a-z]'), '');
  // int age3 = int.parse(stdin.readLineSync() ?? " ");

  print('Ваш адрес:');
  String address = stdin.readLineSync() ?? "";
  String addressFinish = address.trim();

  print('Вашe хобби:');
  String hobby = stdin.readLineSync() ?? "";
  String hobby1 = hobby.trim();
  String hobbyFinish = hobby1.replaceAll(RegExp('[0-9]'), '');

  print(
      'Ваше имя: $nameFinish \nВаш возраст: $ageFinish \nВаш адрес: $addressFinish \nВашe хобби: $hobbyFinish');

  // Поставить проверку к предыдущему заданию. Создайте переменные myName myAge и.т.д

  if (nameFinish == 'azim') {
    print('Пользователь: $nameFinish «У нас одинаковое имя»');
  }
  if (ageFinish == '20') {
    print('Пользователь: $nameFinish «Мы ровесники»');
  }
  if (addressFinish == 'bishkek') {
    print('Пользователь: $nameFinish «Мы соседи»');
  }
  if (hobbyFinish == 'music') {
    print('Пользователь: $nameFinish «У нас одинаковое хобби»');
  }
  if (nameFinish == 'azim' &&
      ageFinish == '20' &&
      addressFinish == 'bishkek' &&
      hobbyFinish == 'music') {
    print('Пользователь: $nameFinish «Давай дружить»');
  } else {
    print('Пользователь: $nameFinish вы успешно зарегистрировались');
  }

  // В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.
  int sumb = 0;
  int count = 100;

  for (int i = 1; i <= count; i++) {
    sumb += i;
  }

  double average = sumb / count;

  print('Среднее арифметическое: $average');

  // При заданном целом числе n посчитайте n + nn + nnn.
  int n = 5;

  String nString = n.toString();
  String nnString = n.toString() + n.toString();
  String nnnString = n.toString() + n.toString() + n.toString();

  int sumbn = n + int.parse(nnString) + int.parse(nnnString);

  print('Сумма чисел: $sumbn');

  print('Задача 11');

  int age0 = 25;

  if (age0 < 7) {
    print('"Вам в садик"');
  } else if (age0 > 7 && age0 < 18) {
    print('"Вам в школу"');
  } else if (age0 > 19 && age0 < 23) {
    print('"Вам в универ"');
  } else if (age0 > 23 && age0 < 60) {
    print('"Вам на работу"');
  } else if (age0 > 60 && age0 < 100) {
    print('"Вы пенсионер"');
  } else {
    print('Да ты безсмертный');
  }

  // Дано шестизначное число, если сумма первых чисел равна сумме вторых трех чисел, вывести true, а иначе вывести false.

  String summa11 = '123456';
  if ((summa11[0] + summa11[1] + summa11[2]) ==
      (summa11[3] + summa11[4] + summa11[5])) {
    print('yes');
  } else {
    print('no');
  }

  // 13
}
