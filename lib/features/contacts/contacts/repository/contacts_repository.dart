import 'package:sqflite/sqflite.dart';

import '../../contact/model/contact_model.dart';
import '../../../../core/database/app_database.dart';

class ContactsRepository {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_name TEXT, '
      '$_accountNumber INTEGER)';
      
  static const String _tableName = 'contacts';
  static const String _id = 'id';
  static const String _name = 'name';
  static const String _accountNumber = 'account_number';

  Future<List<ContactModel>> findAll() async {
    final Database db = await getDatabase();

    final List<Map<String, dynamic>> result = await db.query(_tableName);

    List<ContactModel> contacts = _toList(result);

    return contacts;
  }

  List<ContactModel> _toList(List<Map<String, dynamic>> result) {
    final List<ContactModel> contacts = List();
    for (Map<String, dynamic> row in result) {
      final ContactModel contact = ContactModel(
        id: row[_id],
        name: row[_name],
        accountNumber: row[_accountNumber],
      );
      contacts.add(contact);
    }
    return contacts;
  }
}
