class ContactModel {
  ContactModel({
    this.accountName,
    this.accountNumber,
  });

  String accountName;
  int accountNumber;

  void setAccountName(String value) {
    accountName = value;
  }
  
  void setAccountNumber(int value) {
    accountNumber = value;
  }
}
