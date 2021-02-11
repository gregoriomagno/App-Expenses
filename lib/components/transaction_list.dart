import 'package:expenses/components/transaction_item.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

import 'transaction_isEmpty.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;
  TransactionList(this.transactions, this.onRemove);
  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? TransactionIsEmpty()
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              final tr = transactions[index];
              return TransactionItem(
                key:GlobalObjectKey(tr),
                tr: tr,
                onRemove: onRemove,
              );
            },
          );
    // ListView(
    //         children: transactions.map((tr) {
    //           return TransactionItem(
    //             key: ValueKey(tr.id),
    //             tr: tr,
    //             onRemove: onRemove,
    //           );
    //         }).toList(),
    //       );
  }
}
