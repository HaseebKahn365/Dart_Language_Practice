extension on int {
  void rangeTo(int num) {
    List<int> temp = [];
    if (num >= this) {
      for (int i = this; i <= num; i++) {
        temp.add(i);
      }
      temp.forEach(print);
    } else
      print(temp);
  }
}

void main() {
  //auto print up to the range ie 1.rangeTo(5); should print 1,2,3,4,5
  20.rangeTo(25);
}
