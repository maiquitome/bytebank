import 'package:flutter/material.dart';

import 'package:bytebank/core/database/app_database.dart';

import '../../view/widgets/contact.dart';
import '../../../contact/model/contact_model.dart';
import '../../../contact/view/pages/contact_page.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key key}) : super(key: key);

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
      body: FutureBuilder<List<ContactModel>>(
        initialData: [],
        future: Future.delayed(Duration(seconds: 1)).then((value) => findAll()),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          final List<ContactModel> contacts = snapshot.data;

          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, int index) {
              ContactModel _contactModel = contacts[index];

              return Contact(_contactModel);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => ContactPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
