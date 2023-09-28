import 'dart:io';
import 'dart:math';

typedef MyPow(int value);

void main(List<String> args) {
  // var calculator = Degree(3);
  // print(calculator(3));

  // request_response(2, 3);
  // nard(1, 2);
  // sum(5);
  fib(2);
}

// request_response(int a, int b) {
//   print("$a + $b == ? ");
//   int answer = int.parse(stdin.readLineSync() ?? "0");
//   if (answer == a + b) {
//     print("правильно");
//   } else {
//     request_response(a, b);
//   }
// }

// nard(int a, int b) {
//   print("1- бросить еще раз, 2 - закончить.");
//   String? request = stdin.readLineSync();
//   if (request == '1') {
//     nard(a, b);
//   } else {
//     print("wasted");
//   }
// }

// MyPow Degree(int degree) {
//   return (int value) => pow(value, degree).toInt();
// }

//
// sum(int a) {
//   if (a <= 1) {
//     return 1;
//   } else {
//     return a + sum(a - 1);
//   }
// }

fib(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}
