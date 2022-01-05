import 'package:flutter/material.dart';

import '../../../contact/view/pages/contact_page.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Card(
        child: ListTile(
          title: Text(
            'Alex',
            style: TextStyle(fontSize: 24.0),
          ),
          subtitle: Text(
            '1000',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (BuildContext context) => ContactPage(),
                ),
              )
              .then((value) => value);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
