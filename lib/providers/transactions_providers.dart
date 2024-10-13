import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_barang/models/transaction_model.dart';

class TransactionsProviders {
  List<Transaction> _transactions = [];

  List<Transaction> get transaction => _transactions;

  TransactionsProviders() {
    loadTransactions();
  }

  Future<void> loadTransactions() async {
    final prefs = await SharedPreferences.getInstance();
    final String? transactionsJson = prefs.getString('trasactions');

    if (transactionsJson != null) {
      List<dynamic> transactionList = json.decode(transactionsJson);
      _transactions = transactionList
          .map((transaction) => Transaction.fromMap(transaction))
          .toList();
    }
  }
}
