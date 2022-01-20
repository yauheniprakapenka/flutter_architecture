import 'package:flutter/material.dart';
import 'package:space/space.dart';

import 'app/theme/space_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: spaceTheme(),
      home: SpacePage(
        spaceRepository: MockSpaceRepositoryImpl(),
        bloc: SpaceBlocImpl(),
      ),
    );
  }
}
