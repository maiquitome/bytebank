import 'package:flutter/material.dart';

import '../../../contact/model/contact_model.dart';
import '../../../../../core/widgets/widgets.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
    @required this.formKey,
    @required this.saveContact,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final void Function(ContactModel value) saveContact;

  @override
  Widget build(BuildContext context) {
    ContactModel _contactModel = ContactModel();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            CustomTextFormField(
              prefixIcon: Icon(Icons.person),
              labelText: 'Account Name',
              hintText: 'Full Name',
              onSaved: (String value) => _contactModel.setAccountName(value),
              validator: (String value) {
                if (value == '') {
                  return "Enter the account name!";
                }
                return null;
              },
            ),
            CustomTextFormField(
              prefixIcon: Icon(Icons.account_balance),
              labelText: 'Account Number',
              hintText: '000000',
              keyboardType: TextInputType.number,
              validator: (String value) {
                if (value == '') {
                  return "Enter the account number!";
                }

                int accountNumber = int.tryParse(value);

                if (accountNumber == null) {
                  return "Do not use characters, only numbers.";
                }

                return null;
              },
              onSaved: (String value) {
                _contactModel.setAccountNumber(int.tryParse(value));
              },
            ),
            CustomElevatedButton(
              onPressed: () {
                if (formKey.currentState.validate()) {
                  formKey.currentState.save();

                  saveContact(_contactModel);
                }
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}
