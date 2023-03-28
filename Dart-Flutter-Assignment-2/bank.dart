//Create a class named “Bank” with a list of BankAccount objects as a property.
//Add a method to add a new bank account to the list, and another method to remove a bank account from the list.
//Also, add a method to find the bank account with the highest balance.
import 'dart:io';

void main() {
  Bank bank = Bank();

  //Initializing Accounts
  Account account1 = Account("Muhammad Junaid", "10001", 5000);
  Account account2 = Account("Rehan Khan", "10002", 8000);
  Account account3 = Account("Fayyaz", "10003", 6000);
  Account account4 = Account("Muzammil Bilwani", "10004", 20000);

  //Adding Accounts
  bank.addAccount(account1);
  bank.addAccount(account2);
  bank.addAccount(account3);

  //Printing All Existing Added Accounts
  print("\nAccounts Details");
  for (var account in bank.accounts) {
    print(
        "\nAccount Holder Name: ${account.name}.\nAccount Number: ${account.accountNumber}.\nAccount Balance: \$${account.balance}\n");
  }

  //Printing Highest Balance Account
  Account highestBalanceAccount = bank.getHighestBalanceAccount();
  print(
      "\nAccount with highest balance\nAccount Holder Name: ${highestBalanceAccount.name}.\nAccount Number: ${highestBalanceAccount.accountNumber}.\nAccount Balance: \$${highestBalanceAccount.balance}\n");

  //Removing an Account
  bank.removeAccount(account1);
  print("\nAccounts in bank after removing Junaid's Account\n");

  for (var account in bank.accounts) {
    print(
        "\nAccount Holder Name: ${account.name}.\nAccount Number: ${account.accountNumber}.\nAccount Balance \$${account.balance}.\n");
  }

  //Add New Account
  bank.addAccount(account4);
  print("\nAccounts in bank after adding Muzammil Bilwani's Account:\n");

  for (var account in bank.accounts) {
    print(
        "\nAccount Holder Name: ${account.name}.\nAccount Number: ${account.accountNumber}.\nAccount Balance \$${account.balance}.\n");
  }

  //After Removing & Adding Accounts Once Again
  //Printing Highest Balance Account
  highestBalanceAccount = bank.getHighestBalanceAccount();
  print(
      "\nAccount with highest balance\n\nAccount Holder Name: ${highestBalanceAccount.name}.\nAccount Number: ${highestBalanceAccount.accountNumber}.\nAccount Balance: \$${highestBalanceAccount.balance}");

  //Add Account Search Option
  //You Can Search with Account Holder Name & Account Number Only
  print("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  print("Enter Account Name or Account Number to Search: ");

  //Take input from user
  String query = stdin.readLineSync()!;
  String accountNumber = query;
  String name = query;

  //Search by Name or by Account Number
  Account? searchedAccount = bank.searchAccount(accountNumber, name);

  if (searchedAccount != null) {
    print(
        "Account Holder Name: ${searchedAccount.name}.\nAccount Number: ${searchedAccount.accountNumber}.\nBalance: \$${searchedAccount.balance}\n");
  } else {
    print("Account not found.");
  }
}

//Bank Class
class Bank {
  late List<Account> accounts;

  //List as object
  Bank() {
    accounts = [];
  }

  //Account Add Function
  void addAccount(Account account) {
    accounts.add(account);
  }

  //Account Remove Function
  void removeAccount(Account account) {
    accounts.remove(account);
  }

  //Account Search Function
  Account? searchAccount(String accountNumber, String name) {
    for (var account in accounts) {
      if (account.accountNumber == accountNumber || account.name == name) {
        return account;
      }
    }
    return null;
  }

  //Get Highest Balance Account Function
  Account getHighestBalanceAccount() {
    late Account highestBalanceAccount;
    double highestBalance = 0;

    for (var account in accounts) {
      if (account.balance > highestBalance) {
        highestBalance = account.balance;
        highestBalanceAccount = account;
      }
    }
    return highestBalanceAccount;
  }
}

//Account Class
class Account {
  String name;
  String accountNumber;
  double balance;

  Account(this.name, this.accountNumber, this.balance);
}
