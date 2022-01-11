import 'package:flutter/material.dart';

import '../../view/widgets/contact.dart';
import '../../../contact/model/contact_model.dart';
import '../../model/contacts_model.dart';
import '../../../contact/view/pages/contact_page.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key key}) : super(key: key);

  final ContactsModel contactsModel = ContactsModel(
    contacts: <ContactModel>[
      ContactModel(name: 'Maiqui Tomé', accountNumber: 74563921)
    ],
  );

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: widget.contactsModel.contacts.length,
        itemBuilder: (BuildContext context, int index) {
          ContactModel _contactModel = widget.contactsModel.contacts[index];

          return Contact(_contactModel);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (BuildContext context) => ContactPage(),
                ),
              )
              .then(
                (value) => setState(() {
                  if (value != null)
                    widget.contactsModel.setContactModel(value);
                }),
              );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
