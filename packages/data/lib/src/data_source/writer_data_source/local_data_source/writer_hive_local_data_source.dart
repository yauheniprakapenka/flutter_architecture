import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'interface/i_writer_local_data_source.dart';

const writerBox = 'writerBoxV2';

class WriterHiveLocalDataSource implements IWriterLocalDataSource {
  static const writerKey = 'writerBoxKeyV2';

  @override
  Future<Set<int>> getAllBookmarkedWritersId() async {
    final writersId = Hive.box<List<int>>(writerBox).get(writerKey) ?? [];
    debugPrint('Get all writers id: $writersId');
    return writersId.toSet();
  }

  @override
  Future<void> bookmarkWriterId(int writerId) async {
    debugPrint('Bookmark writer with id: $writerId');
    final writersId = await getAllBookmarkedWritersId();
    writersId.add(writerId);
    debugPrint('All writers id: $writersId');
    await Hive.box<List<int>>(writerBox).put(writerKey, writersId.toList());
  }

  @override
  Future<void> unbookmarkWriter(int writerId) async {
    debugPrint('Unbookmark writer with id: $writerId');
    final writersId = await getAllBookmarkedWritersId();
    writersId.remove(writerId);
    debugPrint('All writers id: $writersId');
    await Hive.box<List<int>>(writerBox).put(writerKey, writersId.toList());
  }
}
