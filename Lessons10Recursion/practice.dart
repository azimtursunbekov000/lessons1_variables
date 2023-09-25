void main(List<String> args) {
  number(100);
}

number(int n) {
  if (n < 1) {
    return n;
  } else {
    print(n);
    return n + number(n - 1);
  }
}
