import 'package:flutter/material.dart';

import '../../contact/model/contact_model.dart';

class ContactsModel {
  ContactsModel({
    @required this.contacts,
  });

  final List<ContactModel> contacts;

  void setContactModel(ContactModel value) {
    contacts.add(value);
  }
}
