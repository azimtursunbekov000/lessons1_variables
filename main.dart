void main() {
  var myName = 'Azim';
  num a = 1002;
  int b = 23;
  bool isOdd = true;
  // лист
  List<String> students = ["1", '2', '3', '4'];

  print("${students[0]} ${students[1]}");
  // Map=карта, Ключ/значение
  Map<String, dynamic> student = {
    "name": "Azim",
    "Age": 20,
    "height": 177,
    "sex": true
  };
  // выводим по ключю
  print(student["Age"]);

  var heart_symbol = 12312;
  var heart_symbo = '\u{1f600}';

  // runtime можно узнать тип данных
  print(heart_symbo);

  print(heart_symbol.runtimeType);
//нельзя инициализировать второй раз/финальная версия
  final int c;
  c = 5;
// должна быть инициализированным
  const int r = 6;
}
