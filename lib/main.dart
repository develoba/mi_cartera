import 'package:flutter/material.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';
import 'package:mi_cartera/home.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  return runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer
        )
      )
    ),
    home: const Home()
  ));
}

/*
1. Day screen only 
  - Card for info
  - Add button -> show modal 
  - Show chart

*/