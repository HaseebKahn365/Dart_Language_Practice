class Email {
  Email(this.email) {
    if (email.contains('@')) {
      throw FormatException();
    }
  }
  final String email;
}

void main() {
  try {
    final email1 = Email('Hi@email.com');
    final email2 = Email('Hiemail.com');
    final email3 = Email('123@mail.com');
    final emailList = [email1, email2, email3];
    print(emailList);
  } on FormatException {
    print('Invalid Email. the email did not contain @ which is an essential element of the email');
  }
}
