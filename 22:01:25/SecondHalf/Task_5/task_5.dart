import 'dart:io';

class BankAccount {
  double balance = 0.0;

  void deposit(double amount) {
    balance = balance + amount;
    print("Deposited: \$${amount}");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance =balance - amount;
      print("Withdrawn: \$${amount}");
    } else {
      print("Insufficient balance!");
    }
  }
}

class SavingsAccount extends BankAccount {}

void main() {
  SavingsAccount account = SavingsAccount();

  while (true) {
    print("\nChoose an option:");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Exit");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        print("Enter amount to deposit:");
        double? amount = double.tryParse(stdin.readLineSync()!);
        if (amount != null) {
          account.deposit(amount);
          print("Current Balance: \$${account.balance}");
        } else {
          print("Invalid amount!");
        }
        break;

      case "2":
        print("Enter amount to withdraw:");
        double? amount = double.tryParse(stdin.readLineSync()!);
        if (amount != null) {
          account.withdraw(amount);
          print("Current Balance: \$${account.balance}");
        } else {
          print("Invalid amount!");
        }
        break;

      case "3":
        print("Goodbye!");
        return;

      default:
        print("Invalid option! Please try again.");
    }
  }
}
