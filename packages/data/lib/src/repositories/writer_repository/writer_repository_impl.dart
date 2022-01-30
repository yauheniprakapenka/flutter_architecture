import 'package:domain/domain.dart';

import '../../mappers/writer_mapper.dart';
import '../../storage/i_writer_storage.dart';

class WriterRepositoryImpl implements IWriterRepository {
  final IWriterStorage _localDataSource;

  const WriterRepositoryImpl({
    required IWriterStorage localDataSource,
  })  : _localDataSource = localDataSource;

  @override
  Future<List<Writer>> getAllWriters() async {
    final writersDtoList = await _localDataSource.getAllWriters();
    return writersDtoList.map(WriterMapper.mapDtoToEntity).toList();
  }
}
