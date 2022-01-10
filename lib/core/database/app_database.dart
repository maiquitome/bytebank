import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/contacts/contact/model/contact_model.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');

    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER');
    }, version: 1);
  });
}

Future<int> save(ContactModel contact) {
  return createDatabase().then((Database db) {
    final Map<String, dynamic> contactMap = Map();

    // contactMap['id'] = contact.id;
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;

    return db.insert('contacts', contactMap);
  });
}

Future<List<ContactModel>> findAll() {
  return createDatabase().then(
    (Database db) {
      return db.query('contacts').then(
        (List<Map<String, dynamic>> maps) {
          final List<ContactModel> contacts = List();

          for (Map<String, dynamic> map in maps) {
            final ContactModel contactModel = ContactModel(
              accountNumber: map['accountNumber'],
              id: map['id'],
              name: map['name'],
            );
            contacts.add(contactModel);
          }
          return contacts;
        },
      );
    },
  );
}
