class Tuple<E extends num> {
  final E? _a;
  final E? _b;
  final E? _c;

  const Tuple(this._a, this._b, this._c);

  Tuple.fromList(List<E> list)
      : _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  Tuple<num> operator +(Tuple<num> T) {
    // if (this is Tuple<num>) {
    //   final thisAsTupleNum = this as Tuple<num>;
    return Tuple(_a! + T._a!, _b! + T._b!, _c! + T._c!);
    // }
    // return const Tuple(0, 0, 0);
  }

  void prETuple<E>() {
    print('$_a $_b $_c');
  }
}

void main() {
  Tuple t1 = Tuple<int>.fromList([2, 3, 4]);
  t1.prETuple();
  Tuple t2 = Tuple<double>.fromList([1.4, 21.3, 12.77]);
  t2.prETuple();
  Tuple t3;
  t3 = t1 + t2;
  t3.prETuple();
}
