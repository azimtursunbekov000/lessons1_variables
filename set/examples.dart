void main(List<String> args) {
  var mySet = <int>{1, 2, 5, 5, 5, 6, 7, 8};
  print(mySet);

  var str = 'Мама мыла раму';
  print(str); // Мама мыла раму
  var newList = Set<String>.from(str.toLowerCase().split('')).toList();
  print(newList);
}
