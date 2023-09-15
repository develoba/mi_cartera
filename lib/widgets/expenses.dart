import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';
import 'package:mi_cartera/widgets/expenses_list.dart';



class Expenses extends StatelessWidget {
  const Expenses({ super.key, required this.expenses });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Expenses'),
        const Text('Chart'),
        Expanded(
          child: ExpensesList(
            expenses: expenses,
          ),
        )
      ],
    );
  }
}