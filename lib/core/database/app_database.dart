import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/contacts/contact/model/contact_model.dart';

Future<Database> getDatabase() async {
  final String dbPath = await getDatabasesPath();

  final String path = join(dbPath, 'bytebank.db');

  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER)');
    },
    version: 1,
  );
}

Future<int> save(ContactModel contact) async {
  final Database db = await getDatabase();

  final Map<String, dynamic> contactMap = Map();

  contactMap['name'] = contact.name;
  contactMap['account_number'] = contact.accountNumber;
  
  return db.insert('contacts', contactMap);
}

Future<List<ContactModel>> findAll() async {
  final Database db = await getDatabase();
  
  final List<Map<String, dynamic>> result = await db.query('contacts');
  
  final List<ContactModel> contacts = List();
  
  for (Map<String, dynamic> row in result) {
    final ContactModel contact = ContactModel(
      id: row['id'],
      name: row['name'],
      accountNumber: row['account_number'],
    );
    contacts.add(contact);
  }
    
  return contacts; 
}
