import '../../../data/mappers/writer_mapper.dart';
import '../../../data/storage/i_writer_storage.dart';
import '../../../domain/entities/writer.dart';
import '../../../domain/repositories/writer_repository/i_writer_repository.dart';

class WriterRepositoryImpl implements IWriterRepository {
  final IWriterStorage localStorage;

  WriterRepositoryImpl({
    required this.localStorage,
  });

  @override
  Future<List<Writer>> getAllWriters() async {
    final writersDtoList = await localStorage.getAllWriters();
    return writersDtoList.map(WriterMapper.mapToDomain).toList();
  }
}
