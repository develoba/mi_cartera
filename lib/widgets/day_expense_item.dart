import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';

class DayExpenseItem extends StatelessWidget {
  const DayExpenseItem(this.expense, { super.key });

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondaryContainer
              ),
              child: Text(
                '€${expense.amount.toString()}',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(expense.title),
                Text(
                  '${expense.category.name[0].toUpperCase()}${expense.category.name.substring(1)}',
                  style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Theme.of(context).colorScheme.error.withOpacity(0.75),),
            ),
          ],
        ),
      ),
    );
  }
}