import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/transaction_card.dart';

import '../models/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;
  final Function deleteTransaction;
  TransactionList(this._userTransactions,  this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (buildContex, index) {
          return TransactionCard(_userTransactions[index],deleteTransaction);
        },
        itemCount: _userTransactions.length,
      ),
    );
  }
}

// children: _userTransactions.map((transaction) {
// return TransactionCard(transaction);
// }).toList(),