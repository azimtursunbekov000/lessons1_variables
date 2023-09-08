import 'dart:io';

void main(List<String> args) {
  //1.Если переменная a равна 10, то выведите &#39;Верно&#39;, иначе
// выведите &#39;Неверно&#39;.
  int a = 10;
  switch (a) {
    case 1:
    case 2:
    case 23:
      print('Неверно');
      break;
    case 10:
    case 7:
    case 26:
      print("Верно");
      break;
    default:
      print("нету этого числа");
  }

//  2 Переменная lang может принимать 2 значения: ru en. Если она
// имеет значение ru, то в переменную arr запишем массив дней
// недели на русском языке, а если имеет значение en – то на
// английском. Решите задачу через 2 if, через switch-case.
  var lang = 'en';
  var arr;

  if (lang == 'ru') {
    arr = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
  } else if (lang == 'en') {
    // с else, второе условие не будет лишний раз проверяться, если первое выполнилось
    arr = ['mn', 'ts', 'wd', 'th', 'fr', 'st', 'sn'];
  }
  print(arr);

  // 3Переменная num может принимать 4 значения: 1, 2, 3 или 4.
// Если она имеет значение &#39;1&#39;, то в переменную result запишем &#39;зима&#39;,
// если имеет значение &#39;2&#39; – &#39;весна&#39; и так далее. Решите задачу через
// switch-case.

  var num = 1;
  String res;
  switch (num) {
    case 1:
    case 2:
    case 12:
      res = "Зима";
      break;
    case 3:
    case 4:
    case 5:
      res = "Весна";
      break;
    case 6:
    case 7:
    case 8:
      res = "Лето";
      break;
    case 9:
    case 10:
    case 11:
      res = "Осень";
      break;
    default:
      res = "Нет такого месяца!";
  }
  print(res);

  // 4
  print("Введите какой день недели");
  int? day = int.parse(stdin.readLineSync() ?? " ");
  String resultat;
  switch (day) {
    case 1:
      resultat = "понедельник  \nу вас 2 пары";
      break;
    case 2:
      resultat = "вторник \nВы сегодня свободны ";
      break;
    case 3:
      resultat = "среда \nу вас 3 пары";
      break;
    case 4:
      resultat = "четверг \nу вас 4 пары";
      break;
    case 5:
      resultat = "пятница \nу вас 1 пара";
      break;
    case 6:
      resultat = "суббота \nВыходной";
      break;
    case 7:
      resultat = "воскресенье \nТоже чилим";
      break;
    default:
      resultat = ("нету такого дня");
  }
  print(resultat);

  // while.1 practice Выведите столбец чисел от 1 до 100.
  var c = 100;
  int i = 1;
  while (i <= c) {
    print(i);
    i++;
  }
  // 2 Выведите столбец чисел от 11 до 33.
  var c1 = 33;
  int i1 = 11;
  while (i1 <= c1) {
    print("\n $i1");
    i1++;
  }

  // 3Выведите столбец четных чисел в промежутке от 0 до 100.
  int i2 = 1;

  while (i2 <= 100) {
    i2++;

    if (i2 % 2 == 0) {
      print(i2);
    }
  }
  // 4
  var sum = 0;
  int i3 = 0;

  // for (var i = 1; i <= 100; i++) {
  //   sum += i;
  // }
  while (i3 < 100) {
    i3++;
    sum += i3;
    print(sum);
  }
}
