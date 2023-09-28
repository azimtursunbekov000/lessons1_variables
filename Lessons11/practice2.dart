void main(List<String> args) {
  String a = '';
  for (int i = 1; i <= 5; i++) {
    a += '$i ';
  }
  print(a);

  int number = 1;
  while (number <= 512) {
    print(number);
    number *= 2;
  }
}
