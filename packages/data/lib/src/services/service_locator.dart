import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

import '../repositories/writer_repository/writer_repository_impl.dart';
import '../storage/mock_writer_storage/mock_writer_storage.dart';

class ServiceLocator {
  static final instance = ServiceLocator();
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  void initialize() {
    _getIt.registerLazySingleton<IWriterRepository>(
      () => WriterRepositoryImpl(
        localStorage: MockWriterStorage(),
      ),
    );
  }
}
