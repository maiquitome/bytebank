import 'package:flutter/material.dart';

import '../../model/contact_model.dart';
import '../../view/widgets/contact_form.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

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
        } 
      ),
    );
  }

  void saveContact(BuildContext context, ContactModel value) {
    Navigator.pop(context, value);
  }
}
