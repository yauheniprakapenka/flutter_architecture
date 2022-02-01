import 'package:hive_flutter/hive_flutter.dart';

import '../data_source/writer_data_source/local_data_source/writer_hive_local_data_source.dart';

Future<void> initHiveService() async {
  await Hive.initFlutter();
  await Hive.openBox<List<int>>(writerBox);
}
