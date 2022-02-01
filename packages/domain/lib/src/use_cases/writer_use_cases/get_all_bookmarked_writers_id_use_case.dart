import '../../repositories/i_writer_repository.dart';

class GetAllBookmarkedWritersIdUseCase {
  final IWriterRepository _writerRepository;

  const GetAllBookmarkedWritersIdUseCase({
    required IWriterRepository writerRepository,
  }) : _writerRepository = writerRepository;

  Future<Set<int>> call() async {
    return _writerRepository.getAllBookmarkedWritersId();
  }
}
