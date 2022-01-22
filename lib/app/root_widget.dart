import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'package:writer/writer.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: writerTheme(),
      home: const WritersListPage(),
    );
  }
}
