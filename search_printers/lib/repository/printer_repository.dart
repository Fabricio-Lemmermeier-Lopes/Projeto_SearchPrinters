import 'package:search_printers/model/dbhelper.dart';
import 'package:search_printers/model/printer.dart';

class PrinterRepository {
  static const String _table = 'printers';
  static Future<int> insert(Printer printer) async {
    var db = await DbHelper.getConnection();
    return db.insert(_table, printer.toMap());
  }

  static Future<List<Printer>> findAll() async {
    var db = await DbHelper.getConnection();
    var result = await db.query('printers');
    return result
        .map(
          (item) => Printer.fromMap(item),
        )
        .toList();
  }
}
