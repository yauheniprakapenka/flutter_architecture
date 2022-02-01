import 'package:data/data.dart';
import 'package:flutter/material.dart';

import 'app/writer_app.dart';

Future<void> main() async {
  DataServiceLocator.instance.init();
  await initHiveService();
  runApp(const WriterApp());
}
