import '../entities/writer.dart';

abstract class IWriterRepository {
  /// Get data from remote storage.
  Future<List<Writer>> getAllWriters();

  /// Get data from local storage.
  Future<Set<int>> getAllBookmarkedWritersId();

  /// Get data from local storage.
  Future<void> bookmarkWriterId(int writerId);

  /// Get data from local storage.
  Future<void> unbookmarkWriterId(int writerId);
}
