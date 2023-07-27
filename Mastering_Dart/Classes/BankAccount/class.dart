class BankAccount {
  BankAccount(this._balance, {required this.accountHolder});
  double _balance;
  final String accountHolder;
  void deposit(double amount) {
    _balance += amount;
  }

  double get balanceGetter => _balance;

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print('Success: $amount withdrawn by $accountHolder. Remaining: $_balance');
    } else {
      print('couldn\'t withdraw $amount because current _balance is $_balance');
    }
  }
}
