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
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
