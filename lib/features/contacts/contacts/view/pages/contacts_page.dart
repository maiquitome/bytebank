import 'package:flutter/material.dart';

import '../../view/widgets/contact.dart';
import '../../../contact/model/contact_model.dart';
import '../../../contact/view/pages/contact_page.dart';

import '../../../contacts/repository/contacts_repository.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final ContactsRepository repository = ContactsRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: FutureBuilder<List<ContactModel>>(
        initialData: [],
        future: repository.findAll(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return CircularProgressIndicator();
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<ContactModel> contacts = snapshot.data;

              return ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  ContactModel _contactModel = contacts[index];

                  return Contact(_contactModel);
                },
              );
              break;
          }

          return Text('unknown error');
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
              .then((value) => setState(() {}));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
