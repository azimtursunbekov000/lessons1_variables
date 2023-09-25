import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print(
      "Здраствуйте! У нас есть 2 режима игры а так же раунды, максимум 5 раундов можно сыграть");

  int roundGame = 0;
  while (roundGame < 1 || roundGame > 5) {
    print("cколько раундов хотите играть? (1-5)");
    roundGame = int.parse((stdin.readLineSync() ?? "3"));
  }
  int number_to_choose_from = 0;
  while (number_to_choose_from < 1 || number_to_choose_from > 2) {
    print(
        'это : \n 1)Вы отгадываете  число \n 2)Компьютер отгадывает \n Для выбора нажмите 1 или 2');
    var a = stdin.readLineSync();
    number_to_choose_from = int.parse(a ?? "3");
  }

  int winner = round(number_to_choose_from, roundGame);
  if (winner == 1) {
    print("комп выиграл");
  } else if (winner == 2) {
    print("выиграл человек");
  } else {
    print("Ничья!");
  }
}

int computer() {
  var high = 100;
  var low = 0;
  var counter = 0;
  print("ну че, поиграем?\nя уже загадал число, отгaдаешь?");
  var random = Random().nextInt(high);

  while (true) {
    var mid = (high + low) ~/ 2.round();

    print("введите ваше число");
    int number = int.parse(stdin.readLineSync() ?? "0");
    if (random < number) {
      counter++;
      low = mid;
      print("less");
    } else if (random > number) {
      counter++;
      high = mid;
      print("greater");
    } else if (number == random) {
      counter++;
      print("вы угадали мое число $random за $counter попыток");
      break;
    } else {
      counter++;
      print("не туда свернулi");
    }
  }
  return counter;
}

int human() {
  var low = 0;
  var high = 100;
  var attempts = 0;
  while (true) {
    int mid = ((low + high) / 2).round();
    print("Предполагаю, что число равно ${mid}");
    String? answer = stdin.readLineSync();
    if (answer == '>') {
      print(low = mid);
      attempts++;
    } else if (answer == '<') {
      print(high = mid);
      attempts++;
    } else if (answer == "=") {
      attempts++;
      print("Угадал! Это заняло ${attempts} попыток.");
      break;
    } else {
      print("играйте честно");
    }
  }
  return attempts;
}

int round(int number_to_choose_from, int roundGame) {
  int humanRate = 0;
  int compRate = 0;
  for (int i = 1; i <= roundGame; i++) {
    if (number_to_choose_from == 1) {
      compRate += computer();
      humanRate += human();
    } else {
      humanRate += human();
      compRate += computer();
    }
    print("\n новый раунд \n");
  }

  if (compRate < humanRate) {
    return 1; //комп победил
  } else if (humanRate < compRate) {
    return 2; //человек победил
  } else {
    return 0; // ничья
  }
}
