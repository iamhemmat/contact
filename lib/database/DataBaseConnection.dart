
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBConnect{
  setDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}/contact.db';
    print('\n\n\n\n\n\\n\n\n\\n $path');
    var database = await openDatabase(path, version: 1, onCreate: _createDB);
    return database;
  }

  void _createDB(Database db, int version) async {

    await db.execute("CREATE TABLE group(id	INTEGER PRIMARY KEY AUTOINCREMENT,name	TEXT NOT NULL,icon	INTEGER NOT NULL)");

    await db.execute("CREATE TABLE contact(id	INTEGER PRIMARY KEY AUTOINCREMENT, name	TEXT NOT NULL,phone	INTEGER, group_id	INTEGER,des	TEXT,FOREIGN KEY(group_id) REFERENCES group(id))");
  }

}