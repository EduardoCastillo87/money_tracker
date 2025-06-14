import 'package:flutter/material.dart';
import 'package:moneytracker/controller/transaction_provider.dart';
import 'package:moneytracker/view/widgets/Header_Card.dart';
import 'package:provider/provider.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    final provider = Provider.of<TransactionsProvider>(context);
    final balance = provider.getBalance();
    final incomes = provider.getTotalIncomes();
    final expenses = provider.getTotalExpenses();

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 12),
          Text(
            'MONEY TRACKET',
            style: TextTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.teal.shade900,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Balance:',
            style: TextTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Text(
            '\$ ${balance.toStringAsFixed(2)}',
            style: TextTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                HeaderCard(
                  title: 'Incomes',
                  amount: incomes,
                  icon: Icon(Icons.attach_money, color: Colors.teal),
                ),
                SizedBox(width: 12),
                HeaderCard(
                  title: 'Expenses',
                  amount: expenses,
                  icon: Icon(Icons.money_off, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
