import 'package:search_printers/model/dbhelper.dart';
import 'package:search_printers/model/printer.dart';

class TicketRepository {
  static const String _table = 'tickets';
  static Future<int> insert(Printer printer) async {
    var db = await DbHelper.getConnection();
    return db.insert(_table, printer.toMap());
  }

  static Future<List<Ticket>> findAll() async {
    var db = await DbHelper.getConnection();
    var result = await db.query('tickets');
    return result
        .map(
          (item) => Ticket.fromMap(item),
        )
        .toList();
  }
}
