import 'package:flutter/material.dart';

class Transactions_list extends StatelessWidget {
  const Transactions_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.attach_money, color: Colors.teal),
              title: const Text('Income'),
              subtitle: const Text('You got \$ 1,000.00'),
              trailing: const Text('\$ 1,000.00'),
            ),
            ListTile(
              leading: const Icon(Icons.attach_money, color: Colors.red),
              title: const Text('Expense'),
              subtitle: const Text('You spent \$ 500.00'),
              trailing: const Text('- \$ 500.00'),
            ),
          ],
        ),
      ),
    );
  }
}
