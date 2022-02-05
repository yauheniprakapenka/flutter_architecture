import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: _buildAppBarTheme(),
  );
}

AppBarTheme _buildAppBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.grey[800],
  );
}
