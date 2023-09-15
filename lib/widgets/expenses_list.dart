import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';
import 'package:mi_cartera/widgets/day_expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({ super.key, required this.expenses });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => DayExpenseItem(expenses[index])
    );
  }
}