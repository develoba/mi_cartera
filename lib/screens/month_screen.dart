import 'package:flutter/material.dart';

class MonthScreen extends StatelessWidget {
  const MonthScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Total expenses'),
        Text('Month Chart'),
      ],
    );
  }
}