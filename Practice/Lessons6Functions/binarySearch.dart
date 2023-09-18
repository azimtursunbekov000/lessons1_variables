import 'dart:io';

void main(List<String> args) {
  print(
      "Здраствуйте! \n если число больше введите > \n если меньше введите < \n если угaдали введите = ");
  binary(0, 100, 0);
}

//        левый       правый    попытки
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
