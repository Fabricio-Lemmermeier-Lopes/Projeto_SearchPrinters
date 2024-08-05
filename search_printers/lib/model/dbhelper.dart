import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> getConnection() async{
    const String dbName = 'search_printer_fabs.db';
    final String dbPath = await getDatabasesPath();
    return await openDatabase(
      '$dbPath$dbName',
      version: 1,
      onCreate: (db, _) async {
        await db.execute(
            'CREATE TABLE printers (name CHAR(15) NOT NULL,marca CHAR(8) NOT NULL,multi CHAR(3) NOT NULL,color VARCHAR(14),velip CHAR(7) NOT NULL,velic CHAR(7),funcoes CHAR(30) NOT NULL,alimentacao CHAR(12) NOT NULL,qualip CHAR(8) NOT NULL,qualic CHAR(8));');
      },
    );
  }
}
