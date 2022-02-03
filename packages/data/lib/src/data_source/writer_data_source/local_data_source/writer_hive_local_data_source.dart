import 'package:hive_flutter/hive_flutter.dart';

import 'interface/i_writer_local_data_source.dart';

const writerBox = 'writerBoxV2';

class WriterHiveLocalDataSource implements IWriterLocalDataSource {
  static const _writerKey = 'writerBoxKeyV2';

  @override
  Future<Set<int>> getAllBookmarkedWritersId() async {
    final writersId = Hive.box<List<int>>(writerBox).get(_writerKey) ?? [];
    return writersId.toSet();
  }

  @override
  Future<void> bookmarkWriterId(int writerId) async {
    final writersId = await getAllBookmarkedWritersId();
    writersId.add(writerId);
    await Hive.box<List<int>>(writerBox).put(_writerKey, writersId.toList());
  }

  @override
  Future<void> unbookmarkWriter(int writerId) async {
    final writersId = await getAllBookmarkedWritersId();
    writersId.remove(writerId);
    await Hive.box<List<int>>(writerBox).put(_writerKey, writersId.toList());
  }
}
