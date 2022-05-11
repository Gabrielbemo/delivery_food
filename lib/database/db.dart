import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'delivery.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_user);
    /*await db.execute(_order);
    await db.items(_items)*/
  }

  String get _user => '''
    CREATE TABLE user(
      id INTEGER PRIMARY KEY AUTOINCRMENT,
      name TEXT,
      cpf TEXT,
      email TEXT,
      password TEXT,
      address TEXT,
      addressnum INTEGER,
      addressblock TEXT,
    );
  ''';
}
