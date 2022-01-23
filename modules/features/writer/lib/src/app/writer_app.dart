import 'package:flutter/material.dart';

import '../app/di/writer_di.dart';
import '../ui/pages/writers_list_page.dart';

class WriterApp extends StatelessWidget {
  const WriterApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    WriterDI.addDependencies();
    return const WritersListPage();
  }
}
