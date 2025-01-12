extension on List {
  num sum() {
    num temp = 0;
    for (var element in this) {
      temp += element;
    }
    return temp;
  }
}

void main() {
  final sum = [1, 2, 3, 5].sum();
  print(sum);
  final doubles = [5.3, 2.4, 3.5, 4.6].sum();
  print(doubles);

  final list1 = [1, 3, 4, 5];
  final list2 = list1.map((e) => e * 2).where((element) => element % 3 == 0).toList();
  print(list2);
}
