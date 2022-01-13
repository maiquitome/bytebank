import 'package:flutter/material.dart';

import '../../model/contact_model.dart';
import '../../view/widgets/contact_form.dart';
import '../../repository/contact_repository.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key key}) : super(key: key);

  final ContactRepository repository = ContactRepository();
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ContactForm(
        formKey: _formKey,
        saveContact: (ContactModel value) {
          saveContact(context, value);
        },
      ),
    );
  }

  void saveContact(BuildContext context, ContactModel contactModel) {
    repository.save(contactModel).then(
      (int id) => Navigator.pop(context),
    );
  }
}
