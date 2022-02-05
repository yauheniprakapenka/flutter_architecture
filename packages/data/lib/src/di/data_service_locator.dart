import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

import '../data_source/local/writer_hive_data_source.dart';
import '../data_source/remote/writer_mock_data_source.dart/writer_mock_data_source.dart';
import '../repositories/writer_repository_impl.dart';

class DataServiceLocator {
  static final instance = DataServiceLocator();
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  void init() {
      _getIt.registerLazySingleton<IWriterRepository>(
        () => WriterRepositoryImpl(
          localDataSource: WriterHiveDataSource(),
          remoteDataSource: WriterMockDataSource(),
        ),
      );
    }
}
