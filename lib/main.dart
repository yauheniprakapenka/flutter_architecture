import 'package:flutter/material.dart';
import 'package:writer/writer.dart';

import 'app/theme/app_themes/writer_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: writerTheme(),
      home: const WritersListPage(),
    );
  }
}
