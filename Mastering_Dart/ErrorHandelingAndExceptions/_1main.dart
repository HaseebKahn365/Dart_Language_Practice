class PositiveInt {
  const PositiveInt(this.value) : assert(value >= 0, 'VALUE CAN NOT BE NEGATIVE');
  final int value;
}

void signIn(String email, String password) {
  assert(email.isNotEmpty, 'Email can not be empty');
  assert(password.isNotEmpty, 'Password can not be empty');
}

void main() {
  // const invalidNum = PositiveInt(-1);
  // print(invalidNum.value);
  // const signIn('', '');
}
