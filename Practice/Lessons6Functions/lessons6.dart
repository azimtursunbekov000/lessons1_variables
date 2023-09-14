import 'dart:io';

void main(List<String> args) {
  Map user = {"name": "Azim", "lastname": "Tursunbekov", "age": 20};
  getUserName(user, 21);
}

String getUserName(Map user, int myAge) {
  if (user["age"] > myAge) {
    return "Он старше";
  } else {
    return "он младше";
  }
}
