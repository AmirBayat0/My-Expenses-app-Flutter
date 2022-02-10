// ignore_for_file: prefer_const_constructors

class Transaction {
  String title;
  String id;
  double amount;
  DateTime time;

  Transaction({
    required this.title,
    required this.amount,
    required this.time,
    required this.id,
  });
}

List<Transaction> transaction = [];

List<Transaction> get recentTransaction {
  return transaction.where(
    (element) {
      return element.time.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    },
  ).toList();
}
