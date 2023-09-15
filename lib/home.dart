import 'package:flutter/material.dart';
import 'package:mi_cartera/models/expense.dart';
import 'package:mi_cartera/screens/day_screen.dart';
import 'package:mi_cartera/screens/month_screen.dart';
import 'package:mi_cartera/widgets/expenses.dart';
import 'package:mi_cartera/widgets/new_expense.dart';


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

final List<MaterialColor> categoryColors = [Colors.purple, Colors.blue, Colors.green, Colors.yellow, Colors.red, Colors.grey, Colors.brown, Colors.orange];


class Home extends StatefulWidget {
  const Home({ super.key });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    void _openAddExpense() {
      showModalBottomSheet(
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: _onAddExpense,),
      );
    }

    void _onAddExpense(Expense expense) {
      setState(() {
        _registeredExpenses.add(expense);
      });
    }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {}, //TODO: show options screen
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Mi Cartera',),
        actions: [
          IconButton(
            onPressed: () {}, //TODO: show general chart screen
            icon: const Icon(Icons.pie_chart_outline)
          )
        ],
      ),
      body: Expenses(expenses: _registeredExpenses,),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddExpense,
        child: const Icon(Icons.add),
      ),
      
      
    );
  }
}