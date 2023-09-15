import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';
import 'package:mi_cartera/widgets/expenses_list.dart';



class Expenses extends StatelessWidget {
  const Expenses({ super.key, required this.expenses, required this.onDelete });

  final List<Expense> expenses;
  final void Function(Expense expense) onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Expenses'),
        const Text('Chart'),
        Expanded(
          child: ExpensesList(
            expenses: expenses,
            onDelete: onDelete,
          ),
        )
      ],
    );
  }
}