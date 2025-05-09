import 'package:flutter/material.dart';
import 'package:moneytracker/view/components/home_Header.dart';
import 'package:moneytracker/view/components/transaction_list.dart'
    show Transactions_list;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        bottom: false,
        child: Column(children: [homeHeader(), Transactions_list()]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a bottom sheed to add transaction
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
