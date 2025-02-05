void main() {
  int n = 5;

  // 8
  for (int i = 1; i <= n; i++) {
    print('*' * i);
  }

  print('');

  // 9
  for (int i = 1; i <= n; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += j.toString();
    }
    print(row);
  }

  print('');

  // 10
  for (int i = 1; i <= n; i++) {
    print('${i}' * i);
  }
}