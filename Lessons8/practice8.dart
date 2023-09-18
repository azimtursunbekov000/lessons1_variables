import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int sum = 0;
  // Выведите на экран сумму двух случайно сгенерированных чисел
  // for (int i = 0; i < 2; i++) {
  //   var random = Random().nextInt(5);
  //   print("random number $random ");
  //   sum += random;
  //   print("summ = $sum");
  // }

  // Заполните массив случайными числами, размер массива задайте через рандом

  // var random1 = Random().nextInt(8);
  // List list = [];
  // print(random1);

  // for (int i = 0; i < random1; i++) {
  //   int random2 = Random().nextInt(20);
  //   list.add(random2);
  // }
  // print(list);

  // 3)Заполните массив случайными числами в интервале [0,5]. Введите число Xи найдите все индексы значения, равные X.
  // List array = [];
  // int n = 6;
  // for (int i = 0; i < n; i++) {
  //   array.add(Random().nextInt(5));
  // }
  // print(array);
  // print("vvedite chislo :");
  // int chislo = int.parse(stdin.readLineSync() ?? "");
  // for (int i = 0; i < array.length; i++) {
  //   if (chislo == array[i]) {
  //     print('$chislo  index $i');
  //   }
  // }

  // 4)Заполните массив случайными числами в интервале [50,100]. Определить,есть ли в нем элементы с одинаковыми значениями, стоящие рядом.
  List array1 = [];
  int z = 10;
  for (int i = 0; i < z; i++) {
    array1.add(Random().nextInt(50) + 50);
  }
  print(array1);

  for (int i = 0; i < array1.length - 1; i++) {
    if (array1[i] == array1[i + 1]) {
      print('да');
    } else {
      print('нет');
    }
  }
}
