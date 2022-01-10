class ContactModel {
  ContactModel({
    this.id,
    this.accountName,
    this.accountNumber,
  });

  int id;
  String accountName;
  int accountNumber;

  void setAccountName(String value) {
    accountName = value;
  }

  void setAccountNumber(int value) {
    accountNumber = value;
  }
}
