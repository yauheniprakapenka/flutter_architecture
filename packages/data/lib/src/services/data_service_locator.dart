import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

import '../data_source/writer_data_source/local_data_source/writer_hive_local_data_source.dart';
import '../data_source/writer_data_source/remote_data_source/mock_writer_remote_data_source/writer_mock_remote_data_source.dart';
import '../repositories/writer_repository_impl.dart';

class DataServiceLocator {
  static final instance = DataServiceLocator();
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  void init() {
    _getIt.registerLazySingleton<IWriterRepository>(
      () => WriterRepositoryImpl(
        localDataSource: WriterHiveLocalDataSource(),
        remoteDataSource: WriterMockRemoteDataSource(),
      ),
    );
  }
}
