import 'package:flutter/material.dart';
import 'package:mi_cartera/widgets/expenses.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expenses()
      ],
    );
  }
}