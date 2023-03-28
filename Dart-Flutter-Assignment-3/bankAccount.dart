//Create a BankAccount class with balance and accountNumber properties, and methods called deposit() and withdraw() that
//modify the balance property. Then create a CheckingAccount class that inherits from BankAccount and has a transactionLimit property.
//Override the withdraw() method in the CheckingAccount class to check if the withdrawal amount is within the transaction limit before
//modifying the balance property.
void main() {
  BankAccount myAccount = BankAccount(123456, 1000.0);

  myAccount.deposit(500.0);
  print("Balance after deposit: ${myAccount.balance}");

  myAccount.withdraw(200.0);
  print("Balance after withdrawal: ${myAccount.balance}");

  CheckingAccount myChecking =
      CheckingAccount(654321, balance: 2000.0, transactionLimit: 1000.0);

  myChecking.deposit(750.0);
  print("Checking balance after deposit: ${myChecking.balance}");

  myChecking.withdraw(500.0);
  print("Checking balance after withdrawal: ${myChecking.balance}");

  myChecking.withdraw(1500.0);
  print("Checking balance after excessive withdrawal: ${myChecking.balance}");
}

class BankAccount {
  int accountNumber;
  double balance;

  BankAccount(this.accountNumber, [this.balance = 0]);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit;

  CheckingAccount(int accountNumber,
      {double balance = 0, this.transactionLimit = 500})
      : super(accountNumber, balance);

  void withdraw(double amount) {
    if (amount > transactionLimit) {
      print("Withdrawal amount exceeds transaction limit.");
    } else {
      super.withdraw(amount);
    }
  }
}
