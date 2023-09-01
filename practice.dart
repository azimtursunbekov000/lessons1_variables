void main() {
  // первое задание
  int a = 2;
  int b = 2;
  int c = a + b;
  print("${a} + ${b} = $c");

  // второе задание
  int a1 = 5;
  int b1 = 10;
  int c1 = a1 - b1;
  print("${a1} - ${b1} = ${c1}");

  // тертье задание
  int a2 = 16;
  int b2 = 3;
  int c2 = a2 * b2;
  print("${a2} * ${b2} = ${c2}");

  // четвертое задание
  int a3 = 18;
  int b3 = 2;
  int c3 = a3 ~/ b3;
  print("${a3} ÷ ${b3} = ${c3}");

// 2.1
  int a4 = 12;
  int b4 = 15;

  if (a4 < b4) {
    print("${a4} < ${b4} = ${a4}");
  } else {
    print("${a4} > ${b4} = ${b4}");
  }
  // 2.2
  int a5 = 12;
  int b5 = 15;
  if (a5 > b5) {
    print("${a5} < ${b5} = ${a5}");
  } else {
    print("${a5} > ${b5} = ${b5}");
  }
  // 2.3
  int a6 = 12;
  int b6 = 15;
  if (a6 <= b6) {
    print("${a6} <= ${b6} = ${a6}");
  } else {
    print("${a6} >= ${b6} = ${b6}");
  }
  // 2.4
  int a7 = 12;
  int b7 = 15;
  if (a7 >= b7) {
    print("${a7} <= ${b7} = ${a7}");
  } else {
    print("${a7} >= ${b7} = ${b7}");
  }
// 2.5
  int a8 = 12;
  int b8 = 15;
  if (a8 == b8) {
    print("${a8} == ${b8} = ${a8}");
  } else {
    print("они не равны");
  }
  // 3.1
  String name = "Азим";
  int age = 20;
  print("Здраствуйте, как Вас зовут? ${name}. Сколько вам лет?  ${age}");

  // 4.1
  List instuments = ['MacBook', 'Phone', 'charging'];
  var abc = instuments[0];
  print(abc);
  print("${instuments[0]} ${instuments[1]} ${instuments[2]}");
}
