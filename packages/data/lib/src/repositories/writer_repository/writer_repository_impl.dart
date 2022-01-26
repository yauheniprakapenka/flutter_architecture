import 'package:domain/domain.dart';

import '../../mappers/writer_mapper.dart';
import '../../storage/i_writer_storage.dart';

class WriterRepositoryImpl implements IWriterRepository {
  final IWriterStorage _localStorage;

  const WriterRepositoryImpl({
    required IWriterStorage localStorage,
  }) : _localStorage = localStorage;

  @override
  Future<List<Writer>> getAllWriters() async {
    final writersDtoList = await _localStorage.getAllWriters();
    return writersDtoList.map(WriterMapper.mapDtoToEntity).toList();
  }
}
