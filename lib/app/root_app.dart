import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'package:writer/writer.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: writerTheme(),
      home: const WriterApp(),
    );
  }
}
