import 'package:hive_flutter/hive_flutter.dart';

import 'interface/i_writer_local_data_source.dart';

class WriterHiveDataSource implements IWriterLocalDataSource {
  static const _writerBox = 'writerBoxNew';
  static const _writerKey = 'writerBoxKeyNew';

  @override
  Future<Set<int>> getAllBookmarkedWritersId() async {
    await _initHiveService();
    final writersId = Hive.box<List<int>>(_writerBox).get(_writerKey) ?? [];
    return writersId.toSet();
  }

  @override
  Future<void> bookmarkWriterId(int writerId) async {
    await _initHiveService();
    final writersId = await getAllBookmarkedWritersId();
    writersId.add(writerId);
    await Hive.box<List<int>>(_writerBox).put(_writerKey, writersId.toList());
  }

  @override
  Future<void> unbookmarkWriter(int writerId) async {
    await _initHiveService();
    final writersId = await getAllBookmarkedWritersId();
    writersId.remove(writerId);
    await Hive.box<List<int>>(_writerBox).put(_writerKey, writersId.toList());
  }

  Future<void> _initHiveService() async {
    await Hive.initFlutter();
    if (!Hive.isBoxOpen(_writerBox)) {
      await Hive.openBox<List<int>>(_writerBox);
    }
  }
}
