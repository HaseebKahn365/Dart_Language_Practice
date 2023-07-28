class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  Credentials copyWith({String? email, String? password}) => Credentials(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  @override
  String toString() => 'Credentials: email: ${this.email} password: ${this.password}';
}

void main() {
  const credentials = Credentials();
  print(credentials.toString());
  final updated1 = credentials.copyWith(password: 'toa4learn');
  print(updated1); //it only modifies the changes made to the object and also leaves the other untouched
}
