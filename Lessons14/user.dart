import 'dart:io';

class User {
  String login;
  String pass;
  User({required this.login, required this.pass});
}

bool validateLogin(String login) {
  if (login.length >= 20) {
    print('WrongLogin');
  }
  if (!login.contains('@') &&
      !login.contains('@mail.ru') &&
      !login.contains('@gmail.com')) {
    print('WrongLogin');
  } else {
    print("верный логин");
  }
  return true;
}

bool validatePassword(String pass, String confirmPass) {
  if (pass.length >= 20 ||
      pass.contains('?') ||
      pass.contains('@') ||
      pass.contains('\$') ||
      pass.contains('%') ||
      !pass.contains('_')) {
    print("неверный пароль");
  }
  if (pass != confirmPass) {
    print("WrongPassword");
  } else {
    print("верный пароль");
  }
  return true;
}

void main(List<String> args) {
  String login = stdin.readLineSync()!;
  while (validateLogin(login)) {
    print("Введите логин");
    login = stdin.readLineSync()!;
  }
  // String pass = stdin.readLineSync()!;
  // while (validatePassword(pass, confirmPass)) {
  //   print("Введите пароль");
  //   pass = stdin.readLineSync()!;
  // }
}
