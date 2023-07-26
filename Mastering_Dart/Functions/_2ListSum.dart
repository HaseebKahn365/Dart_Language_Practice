void main() {
  List<int> list = [1, 2, 3, 4, 5];
  int sum;
  sum = calculateSum(list);
  print(sum);
}

int calculateSum(List<int> list) {
  int sum = 0;
  for (var num in list) {
    sum += num;
  }
  return sum;
}
