// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:expenses_app/models/transaction.dart';
import 'package:expenses_app/screens/widget/chart.dart';
import 'package:expenses_app/screens/widget/new_transaction.dart';
import 'package:expenses_app/screens/widget/transaction_list.dart';
import 'package:flutter/material.dart';
import './widget/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _addNewTransaction(
      String txTitle, double txAmount, DateTime chosenDate) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      time: chosenDate,
      id: DateTime.now().toString(),
    );
    setState(() {
      transaction.add(newTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: ctx,
        builder: (bCtx) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(
              addTx: _addNewTransaction,
            ),
          );
        });
  }

  deletTrasnaction(String id) {
    setState(() {
      transaction.removeWhere((tx) {
      return tx.id == id;
    });
    });
  }






/////////////////////////////////////
/// @CodeWithFlexz on Instagram
///
/// AmirBayat0 on Github
/// Programming with Flexz on Youtube
/////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => startAddNewTransaction(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CostumAppBar(),
              Column(
                children: [
                  Chart(
                    recentTransaction: recentTransaction,
                  ),
                  TransactionList(
                    transaction: transaction,
                    deleteTx: deletTrasnaction,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
