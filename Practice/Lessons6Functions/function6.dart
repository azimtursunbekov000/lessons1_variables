import 'dart:io';

void main(List<String> args) {
  showUser('Azim', 20);
  showList([1, 2, 3, 4, 5]);
  triangle(4, 3);
  a_square_of_symbols(4, 6);
  pyramid(5);

  String str = '123456';
  if ((str[0]) + (str[1]) + (str[2]) == (str[3]) + (str[4]) + (str[5])) {
    print('true');
  } else {
    print('false');
  }
  String str1 = '45645';

  if (str1[0] == '1' || str1[0] == '2' || str1[0] == '3') {
    print('да');
  } else {
    print('нет');
  }
}

showUser(String name, int age) {
  print('name: $name \nage $age');
}

showList(List numbers) {
  print('${numbers.first} ${numbers.last}');
}

triangle(int a, int b) {
  var c = a * a + b * b;
  print(c);
}

a_square_of_symbols(int height, int withh) {
  for (int i = 0; i < height; i++) {
    print("*" * withh);
  }
}

pyramid(int height) {
  for (int i = 0; i < height; i++) {
    print(' ' * (height - i - 1) + '*' * (2 * i + 1));
  }
}
