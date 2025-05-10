class Transaction {
  final TransactionType type;
  final String amount;
  final Stream description;

  Transaction({
    required this.type,
    required this.amount,
    required this.description,
  });
}

enum TransactionType { income, expense }
