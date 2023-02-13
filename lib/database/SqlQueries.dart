import 'package:contact/database/DataBaseConnection.dart';
import 'package:sqflite/sqflite.dart';

class SqliteQueries{

  DBConnect _dbConnect;
 SqliteQueries(){
  _dbConnect = DBConnect();
 }

 static Database _database;

 Future<Database> get database async{
  if(_database!=null){
   return _database;
  }else{
   _database = await _dbConnect.setDatabase();
   return _database;
  }
 }




}