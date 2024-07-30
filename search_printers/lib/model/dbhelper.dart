import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> getConnection() async {
    const String dbName = 'parking_juca_rio_grande.db';
    final String dbPath = await getDatabasesPath();
    return await openDatabase(
      '$dbPath$dbName',
      version: 1,
      onCreate: (db, _) async {
        await db.execute(
            'CREATE TABLE tickets (number INTEGER PRIMARY KEY AUTOINCREMENT,vacancyNumber CHAR(4) NOT NULL,vehicleLicensePlate CHAR(7) NOT NULL,vehicleType VARCHAR(10),entryTime CHAR(5) NOT NULL, departureTime CHAR(5), amount REAL);');
      },
    );
  }
}
