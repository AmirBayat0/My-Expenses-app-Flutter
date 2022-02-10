// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, unused_local_variable

import 'package:expenses_app/screens/widget/no_transaction.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:expenses_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  late final List<Transaction> transaction;
  final Function deleteTx;

  TransactionList({
    required this.transaction,
    required this.deleteTx,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height/1.45,
      
      child: transaction.isEmpty
          ? NoTransaction(
              isAnime: transaction.isEmpty ? true : false,
            )
          : ListView.builder(
              itemCount: transaction.length,
              itemBuilder: (ctx, index) {
                return Container(
                  height: 80,
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FittedBox(
                          child: Text(
                            "\$${transaction[index].amount.toStringAsFixed(2)}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      title: Text(
                        transaction[index].title,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        DateFormat.yMMMEd().format(transaction[index].time),
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      trailing: IconButton(
                          onPressed: () => deleteTx(transaction[index].id),
                          icon: Icon(Icons.delete, color: Colors.red)),
                    ),
                  ),
                );
              }),
    );
  }
}
