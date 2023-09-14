import 'package:flutter/material.dart';
import 'package:mi_cartera/home.dart';

void main() {
  return runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true
    ),
    home: const Home()
  ));
}