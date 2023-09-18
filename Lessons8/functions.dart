import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("если угaдали введите = ");
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
