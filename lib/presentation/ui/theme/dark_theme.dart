import 'package:flutter/material.dart';

const Color colorMain = Color.fromARGB(255, 44, 44, 44);
ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: const ColorScheme.dark().copyWith(
    primary: colorMain,
  ),
  scaffoldBackgroundColor: const Color(0xFFFFE6DF),
  appBarTheme: const AppBarTheme(
    backgroundColor: colorMain,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: colorMain,
      foregroundColor: Colors.white,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
);
