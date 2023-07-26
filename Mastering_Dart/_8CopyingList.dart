void main() {
  List<int> list1 = [1, 3, 4, 5];
  final copy1 = list1;
  copy1[0] = 2;
  copy1[1] = 2; //both of the lists are being changed this is becuase both are pointing to the same memory;
  //using the spread operator to copy;
  final list3 = [...list1];
  list3[1] = 9;

  print('list1: $list1');
  print('list3: $list3');
}
