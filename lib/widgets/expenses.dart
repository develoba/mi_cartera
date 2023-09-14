import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';
import 'package:mi_cartera/widgets/day_expense_item.dart';


final List<Expense> _registeredExpenses = [
  Expense(
    title: 'Comida',
    amount: 30.5,
    category: Category.compras,
    date: DateTime.now(),
  ),
  Expense(
    title: 'raquetas',
    amount: 30.5,
    category: Category.deporte,
    date: DateTime.now(),
  ),
];


class Expenses extends StatelessWidget {
  const Expenses({ super.key });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ..._registeredExpenses.map((expense) => DayExpenseItem(expense))
        ],
      ),
    );
  }
}