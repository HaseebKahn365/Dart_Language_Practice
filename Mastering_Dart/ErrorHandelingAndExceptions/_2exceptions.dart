//Error is done by programmer where as exception is an unhandled situtation that causes the control flow to deviate from normal path.
class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) throw IntegerDivisionByZeroException();
  }
  final num numerator;
  final num denominator;

  double get value => numerator / denominator;
}

void main() {
  try {
    final f = Fraction(2, 0);
    print(f.value);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
    rethrow;
  } on Exception catch (e) {
    print('unknown error $e');
  } finally {
    print('The try body has ended');
  }
}
