import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/contacts/contacts/repository/contacts_repository.dart';

Future<Database> getDatabase() async {
  final String dbPath = await getDatabasesPath();

  final String path = join(dbPath, 'bytebank.db');

  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(ContactsRepository.tableSql);
    },
    version: 1,
  );
}
