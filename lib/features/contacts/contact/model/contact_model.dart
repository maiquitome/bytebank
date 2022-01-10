class ContactModel {
  ContactModel({
    this.id,
    this.name,
    this.accountNumber,
  });

  int id;
  String name;
  int accountNumber;

  void setAccountName(String value) {
    name = value;
  }

  void setAccountNumber(int value) {
    accountNumber = value;
  }
}
