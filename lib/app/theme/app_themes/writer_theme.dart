import 'package:flutter/material.dart';

ThemeData writerTheme() {
  return ThemeData(
    appBarTheme: _buildAppBarTheme(),
  );
}

AppBarTheme _buildAppBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.deepPurple[600],
  );
}
