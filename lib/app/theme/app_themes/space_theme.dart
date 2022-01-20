import 'package:flutter/material.dart';

ThemeData spaceTheme() {
  return ThemeData(
    appBarTheme: _buildAppBarTheme(),
  );
}

AppBarTheme _buildAppBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.deepPurple[600],
  );
}
