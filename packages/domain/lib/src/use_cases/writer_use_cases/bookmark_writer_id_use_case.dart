import '../../repositories/i_writer_repository.dart';

class BookmarkWriterIdUseCase {
  final IWriterRepository _writerRepository;

  const BookmarkWriterIdUseCase({required IWriterRepository writerRepository})
      : _writerRepository = writerRepository;

  Future<void> call(int writerId) async {
    await _writerRepository.bookmarkWriterId(writerId);
  }
}
