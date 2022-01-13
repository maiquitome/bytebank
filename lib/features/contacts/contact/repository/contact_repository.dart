import 'package:sqflite/sqflite.dart';

import '../model/contact_model.dart';
import '../../../../core/database/app_database.dart';

class ContactRepository {
  Future<int> save(ContactModel contact) async {
    final Database db = await getDatabase();

    Map<String, dynamic> contactMap = _toMap(contact);

    return db.insert('contacts', contactMap);
  }

  Map<String, dynamic> _toMap(ContactModel contact) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;
    return contactMap;
  }
}
