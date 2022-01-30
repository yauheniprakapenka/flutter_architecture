import '../entities/writer.dart';
import '../repositories/i_writer_repository.dart';

class GetAllWritersUseCase {
  final IWriterRepository _writerRepository;

  const GetAllWritersUseCase({
    required IWriterRepository writerRepository,
  }) : _writerRepository = writerRepository;

  Future<List<Writer>> call() async {
    return _writerRepository.getAllWriters();
  }
}
