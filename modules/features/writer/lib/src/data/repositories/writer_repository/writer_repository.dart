import '../../../data/dto/writer_dto.dart';
import '../../../domain/repositories/writer_repository/i_writer_repository.dart';

class WriterRepository implements IWriterRepository {
  final IWriterRepository localDataSource;

  WriterRepository({
    required this.localDataSource,
  });

  @override
  Future<List<WriterDTO>> getAllWriters() async {
    return localDataSource.getAllWriters();
  }
}
