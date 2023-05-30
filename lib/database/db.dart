import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:uniaudi/database/option_dao.dart';



Future<Database> getDatabase() async {
  
  final String path = join(await getDatabasesPath(), 'uniaudi.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(OptionDao.useroption);
    },
    version: 1,
  );
}

// Database? _database;

// Future<Database> get database async {
//   if (_database != null) return _database!;
//   _database = await getDatabase()        ;
//   return _database!;
// }

// Future<Database> getDatabase() async {
//   print('createing databse');
//   final dbPath = await getDatabasesPath();
//   final path = join(dbPath, 'taskino.db');
//   print('path is $path');
//   return await openDatabase(
//     path,
//     version: 1,
//     onCreate: (db, version) {
//       db.execute(OptionDao.useroption);
//     },
//   );
// }
