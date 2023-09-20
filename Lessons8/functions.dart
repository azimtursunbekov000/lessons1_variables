import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  randomSearc();
}

randomSearc() {
  int counter = 0;
  print('загадайте число');
  int answer = int.parse(stdin.readLineSync() ?? "");
  while (true) {
    var random = Random().nextInt(100);
    // print("вы загадали число $random ?");
    if (answer == random) {
      counter++;
      print("ваше число $answer я угадал за $counter попыток");
      break;
    } else {
      counter++;
    }
  }
}


// // void main(List<String> args) {
// randomSearc();
// }

// randomSearc() {
// int counter = 0;

// print('загадайте число');

// int max = 100;
// int min = 0;

// int answer = int.parse(stdin.readLineSync() ?? "");

// bool isAnswer = false;

// while (!isAnswer) {
// var random = Random().nextInt((max - min) + 1) + min;

// if (answer == random) {
// counter++;
// print("ваше число $answer я угадал за $counter попыток");
// isAnswer = true;
// } else {
// print('ваше число $random');

// String lessOrGreater = stdin.readLineSync()!;

// if (lessOrGreater == "less") {
// max = random;
// } else if (lessOrGreater == "greater") {
// min = random;
// } else {
// print('Ответ не верный');
// }
// counter++;
// }
// }
// }