import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print(
      "Здраствуйте!) У нас есть 2 режима игры, это : \n 1)Вы отгадываете  число \n 2)Компьютер отгадывает \n Для выбора нажмите 1 или 2");
  while (true) {
    int number_to_choose_from = int.parse(stdin.readLineSync() ?? "");
    if (number_to_choose_from == 1) {
      Quess(100, 0, 0);
      break;
    } else if (number_to_choose_from == 2) {
      binary(0, 100, 0);
      break;
    } else {
      print("к сожалению у нас только 2 режима");
    }
  }
}

Quess(var high, var low, int counter) {
  print("ну че, поиграем?\nя уже загадал число, отгaдаешь?");
  var random = Random().nextInt(high);

  while (true) {
    var mid = (high + low) / 2.round();

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
}

binary(int low, int high, int attempts) {
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
      print("играйте честно, чырдын котону кара");
    }
  }
}

// round() {}
