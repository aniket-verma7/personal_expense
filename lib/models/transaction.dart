import 'package:flutter/cupertino.dart';

class Transaction {
  final int id;
  final String title;
  final DateTime date;
  final double amount;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.date,
    @required this.amount,
  });

  @override
  String toString() {
    return 'Transaction{id: $id, title: $title, date: $date, amount: $amount}';
  }
}
