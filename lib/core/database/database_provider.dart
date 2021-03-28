import 'package:sqflite/sqflite.dart';

abstract class DatabaseProvider {
  Database? _database;

  String get createTableScript;

  String get tableName;

  Future<Database> getDatabase() async {
    // ignore: unnecessary_null_comparison
    if (_database == null) {
      final path = "${await getDatabasesPath()}/$tableName.db";
      print('DatabaseProvider.getDatabase: $path');
      _database = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        await db.execute(createTableScript);
      });
    }
    return _database!;
  }

  Future<void> insert(Map<String, dynamic> objectMap) async {
    final db = await (getDatabase());
    await db.insert(tableName, objectMap,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> insertAll(List<Map<String, dynamic>> objectMapList) async {
    final db = await getDatabase();
    objectMapList.forEach((objectMap) async {
      await db.insert(tableName, objectMap,
          conflictAlgorithm: ConflictAlgorithm.replace);
    });
  }

  Future<void> remove(String id) async {
    final db = await (getDatabase());
    await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> removeAll() async {
    final db = await (getDatabase());
    await db.delete(tableName);
  }

  Future<Map<String, dynamic>?> get(String id) async {
    final db = await (getDatabase());
    final queryResult =
        await db.query(tableName, where: 'id = ?', whereArgs: [id], limit: 1);
    return queryResultIsValid(queryResult) ? queryResult.first : null;
  }

  Future<List<Map<String, dynamic>>?> getAll() async {
    final db = await (getDatabase());
    final queryResult = await db.query(tableName);
    return queryResultIsValid(queryResult) ? queryResult : null;
  }

  bool queryResultIsValid(List<Map<String, dynamic>> result) {
    return result.isNotEmpty;
  }
}
