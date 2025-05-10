import 'package:flutter/widgets.dart';
import 'package:moneytracker/model/transaction.dart';

class TransactionsProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions {
    return [..._transactions];
  }

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
    notifyListeners();
  }
}
