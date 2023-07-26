void main() {
  List<int> list = [1, 2, 3, 4, 5]; // this list can only contain int values

//List list = <int> [1, 2, 3, 4, 5];// this list can contain anything but initialized with int
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
