import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../../domain/models/sms_transaction.dart';

class SmsPendingDb {
  static SmsPendingDb? _instance;
  static Database? _db;

  SmsPendingDb._();

  static SmsPendingDb get instance => _instance ??= SmsPendingDb._();

  Future<Database> get _database async {
    _db ??= await _open();
    return _db!;
  }

  Future<Database> _open() async {
    final path = join(await getDatabasesPath(), 'sms_pending.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, _) => db.execute('''
        CREATE TABLE pending_sms (
          id TEXT PRIMARY KEY,
          rawSms TEXT NOT NULL,
          sender TEXT NOT NULL,
          amount REAL NOT NULL,
          type TEXT NOT NULL,
          merchant TEXT,
          suggestedCategory TEXT,
          date TEXT,
          confidence REAL NOT NULL,
          detectedAt TEXT NOT NULL
        )
      '''),
    );
  }

  Future<void> insert(SmsTransaction txn) async {
    final db = await _database;
    await db.insert('pending_sms', txn.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore);
  }

  Future<List<SmsTransaction>> getPending() async {
    final db = await _database;
    final rows = await db.query('pending_sms', orderBy: 'detectedAt DESC');
    return rows.map(SmsTransaction.fromMap).toList();
  }

  Future<void> delete(String id) async {
    final db = await _database;
    await db.delete('pending_sms', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> count() async {
    final db = await _database;
    final result =
        await db.rawQuery('SELECT COUNT(*) as c FROM pending_sms');
    return (result.first['c'] as int?) ?? 0;
  }
}
