class WrongLoginException implements Exception {
  String message() => 'Wrong login format';
}

class WrongPasswordException implements Exception {
  String message() => 'Wrong password format';
}

class UserAuthentication {
  static bool authenticate(
      String login, String password, String confirmPassword) {
    try {
      validateLogin(login);
      validatePassword(password, confirmPassword);
      return true;
    } on WrongLoginException catch (e) {
      print(e.message());
      return false;
    } on WrongPasswordException catch (e) {
      print(e.message());
      return false;
    }
  }

  static void validateLogin(String login) {
    RegExp loginPattern = RegExp(r'^[a-zA-Z0-9_]{1,20}$');
    if (!loginPattern.hasMatch(login)) {
      throw WrongLoginException();
    }
  }

  static void validatePassword(String password, String confirmPassword) {
    RegExp passwordPattern = RegExp(r'^[a-zA-Z0-9_]{1,20}$');
    if (!passwordPattern.hasMatch(password)) {
      throw WrongPasswordException();
    }
    if (password != confirmPassword) {
      throw WrongPasswordException();
    }
  }
}

void main() {
  String login = 'example123';
  String password = 'example123';
  String confirmPassword = 'example123';

  if (UserAuthentication.authenticate(login, password, confirmPassword)) {
    print('Authentication successful');
  } else {
    print('Authentication failed');
  }
}
