abstract class IWriterLocalDataSource {
  Future<Set<int>> getAllBookmarkedWritersId();

  Future<void> bookmarkWriterId(int writerId);

  Future<void> unbookmarkWriter(int writerId);
}
