void main() {
  var intList = [1, 2, 3, 4, 5, 6, 7, 8];
  var stringList = [for (var i in intList) '#$i'];
  print(stringList);

  // формируем новый список только из тех элементов,
// что делятся на 2 без остатка
  var newList = [
    for (var i in intList)
      if (i % 2 == 0) i
  ];
  print(newList);
}
