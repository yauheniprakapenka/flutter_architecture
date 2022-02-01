import 'package:domain/domain.dart';

import '../data_source/writer_data_source/local_data_source/interface/i_writer_local_data_source.dart';
import '../data_source/writer_data_source/remote_data_source/interface/i_writer_remote_data_source.dart';
import '../mappers/writer_mapper.dart';

class WriterRepositoryImpl implements IWriterRepository {
  final IWriterLocalDataSource _localDataSource;
  final IWriterRemoteDataSource _remoteDataSource;

  const WriterRepositoryImpl({
    required IWriterLocalDataSource localDataSource,
    required IWriterRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<List<Writer>> getAllWriters() async {
    final writersDtoList = await _remoteDataSource.getAllWriters();
    return writersDtoList.map(WriterMapper.mapDtoToEntity).toList();
  }

  @override
  Future<Set<int>> getAllBookmarkedWritersId() async {
    return _localDataSource.getAllBookmarkedWritersId();
  }

  @override
  Future<void> bookmarkWriterId(int writerId) async {
    await _localDataSource.bookmarkWriterId(writerId);
  }

  @override
  Future<void> unbookmarkWriterId(int writerId) async {
    await _localDataSource.unbookmarkWriter(writerId);
  }
}
