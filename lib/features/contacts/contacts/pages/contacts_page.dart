import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'),),
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
    );
  }
}
