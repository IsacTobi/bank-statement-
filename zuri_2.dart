void main() {
  final tobi = BankCustomer(
    accountName: "Issac Tobi",
    accountNumber: 040424444,
  );

  // print(tobi.accountName);
  // print(tobi.increaseBalance(2.0));
  // print(tobi.increaseBalance(0.0));
  // print("New Account Balance = ${tobi.accountBalance}");

  // print(tobi.displayBalance());
  // print(tobi.increaseBalance(10));
  // print(tobi.displayBalance());

  print(tobi.displayBalance());
  print(tobi.increaseBalance(1000));
  print(tobi.displayBalance());
  print(tobi.decreaseBalance(5000));
  print(tobi.displayBalance());

}

class BankCustomer{
  final String accountName;
  final int accountNumber;
  double accountBalance = 00.00;


  BankCustomer({
    required this.accountName,
    required this.accountNumber,
  });

  //diplay balance
  String displayBalance(){
    return "Dear ${this.accountName}, your account balance is: ${this.accountBalance}";
  }

  //increase balance
       // notify on top up
  String increaseBalance(double newDeposite){
    // double newBalance = this.accountBalance + newDeposite;
    this.accountBalance = this.accountBalance + newDeposite;
    if(newDeposite < 1){
      return "Transaction was not successful";
    }
    return "Dear ${accountName}, your new account balance is: ${this.accountBalance}";
  }

  //decrease balance
      // notify on insufficient balance

   String decreaseBalance(double withdrawlAmount){
     if((withdrawlAmount > this.accountBalance) || (withdrawlAmount < 1)){
       return "Dear ${accountName}, you do not have sufficient fund to continue this transaction";
     }
     this.accountBalance = this.accountBalance - withdrawlAmount;
     return "Dear ${accountName}, your new account balance is: ${this.accountBalance}";
   }
}