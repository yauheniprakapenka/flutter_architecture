import '../../../data/repositories/writer_repository/i_writer_repository.dart';
import '../../../domain/entities/writer.dart';

class WriterRepository implements IWriterRepository {
  final IWriterRepository localDataSource;

  WriterRepository({
    required this.localDataSource,
  });

  @override
  Future<List<Writer>> getAllWriters() async {
    return localDataSource.getAllWriters();
  }
}
