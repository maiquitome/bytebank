import 'package:bytebank/features/contacts/contact/model/contact_model.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact(
    this.contactModel, {
    Key key,
  }) : super(key: key);

  final ContactModel contactModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contactModel.name,
          style: TextStyle(fontSize: 20.0),
        ),
        subtitle: Text(
          contactModel.accountNumber.toString(),
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
