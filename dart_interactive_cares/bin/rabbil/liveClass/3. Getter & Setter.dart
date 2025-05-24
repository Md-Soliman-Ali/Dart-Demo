class BankAccount {
  double balance = 0;

  // Deposit (SET)
  void deposit(amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit Amount $amount");
    }
  }

  // Withdraw (SET)
  void withdraw(amount) {
    if (amount > 0) {
      balance -= amount;
      print("withdraw Amount $amount");
    }
  }

  // Check Balance (GET)
  double CurrentBalance() {
    return balance;
  }
}

void main() {
  var OBJ = BankAccount();
  OBJ.deposit(500);
  OBJ.withdraw(200);
  print(OBJ.CurrentBalance());
}
