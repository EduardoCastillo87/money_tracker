import 'package:flutter/material.dart';
import 'package:moneytracker/view/widgets/Header_Card.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
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
            '\$ 1,000.00',
            style: TextTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: const Row(
              children: [
                HeaderCard(
                  title: 'Income',
                  amount: 1000.00,
                  icon: Icon(Icons.attach_money, color: Colors.teal),
                ),
                SizedBox(width: 12),
                HeaderCard(
                  title: 'Expense',
                  amount: -500.00,
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
