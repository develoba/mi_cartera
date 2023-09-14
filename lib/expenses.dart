import 'package:flutter/material.dart';
import 'package:mi_cartera/screens/month_screen.dart';

class Expenses extends StatelessWidget {
  const Expenses({ super.key });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Text('Mi Cartera',),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.pie_chart_outline)
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Mensual',
              ),
              Tab(
                text: 'Semanal',
              ),
              Tab(
                text: 'Diario',
              ),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            MonthScreen(),
            Center(child: Text('Week screen')),
            Center(child: Text('Daily screen')),
          ],
        ),
      )
    );
  }
}