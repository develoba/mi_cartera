import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';
import 'package:mi_cartera/widgets/day_expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({ super.key, required this.expenses, required this.onDelete });

  final List<Expense> expenses;
  final void Function(Expense expense) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => DayExpenseItem(expenses[index], onDelete: onDelete ,)
    );
  }
}