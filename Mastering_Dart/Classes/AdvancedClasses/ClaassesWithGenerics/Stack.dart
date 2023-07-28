class Stack<T> {
  final List<T> _items = []; //This is a good example of composition/ ie. Stack has-a relationship

  void push(T item) => _items.add(item);

  T pop() {
    T temp = _items.last;
    _items.remove(_items.last);
    return temp;
  }
}

void main() {
  Stack S1 = Stack();
  S1.push(21);
  S1.push('water');
  print(S1.pop());
  print(S1.pop());
}
