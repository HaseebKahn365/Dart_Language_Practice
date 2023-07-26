class Stack<T> {
  final List<T> _stack = [];
  bool canPop() => _stack.isEmpty;

  T get peak => _stack.last;
  int get length => _stack.length;

  T pop() {
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) => _stack.add(value);
}

class Utils {
  static T? getItem<T>(List<T> list, int index) => list.asMap().containsKey(index) ? list[index] : null;
}

void main() {
  // var stackString = Stack<String>();
  // print(stackString.canPop());
  // stackString.push('Hello');
  // stackString.push('World!');
  // stackString.push('NExt one');
  // print(stackString.pop());
  // print(stackString.peak);
  List<int> list = [1, 5, 6, 7, 3];
  List<String> list2 = ['hello', 'world'];

  print(Utils.getItem(list, 2));
  print(Utils.getItem(list2, 1));
}
