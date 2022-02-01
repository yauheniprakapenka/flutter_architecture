import '../../repositories/i_writer_repository.dart';

class UnbookmarkWriterIdUseCase {
  final IWriterRepository _writerRepository;

  const UnbookmarkWriterIdUseCase({required IWriterRepository writerRepository})
      : _writerRepository = writerRepository;

  Future<void> call(int writerId) async {
    await _writerRepository.unbookmarkWriterId(writerId);
  }
}
