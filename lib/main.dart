import 'package:flutter/material.dart';
import 'package:space/space.dart';

import 'app/di/di.dart';
import 'app/theme/app_themes/space_theme.dart';

void main() {
  DI.addDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: spaceTheme(),
      home: SpacePage(),
    );
  }
}
