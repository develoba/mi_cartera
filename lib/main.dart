import 'package:flutter/material.dart';
import 'package:mi_cartera/screens/month_screen.dart';

void main() {
  return runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true
    ),
    home: Scaffold(
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
      ),
      body: const MonthScreen(),
    )
  ));
}