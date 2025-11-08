// models/transaction_model.dart
class TransactionModel {
  final String date;
  final String type; // "Income" or "Expense"
  final String source;
  final double amount;

  TransactionModel({
    required this.date,
    required this.type,
    required this.source,
    required this.amount,
  });
}
