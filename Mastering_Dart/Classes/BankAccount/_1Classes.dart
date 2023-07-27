class BankAccount {
  BankAccount({required this.balance, required this.accountHolder});
  double balance;
  final String accountHolder;
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Success: $amount withdrawn by $accountHolder. Remaining: $balance');
    } else {
      print('couldn\'t withdraw $amount because current balance is $balance');
    }
  }
}

void main() {
  final BankAccount1 = BankAccount(balance: 500, accountHolder: 'haseeb'); //creating instance

  BankAccount1.deposit(100);
  BankAccount1.deposit(300);
  print(BankAccount1.balance);
  BankAccount1.withdraw(500);
}
