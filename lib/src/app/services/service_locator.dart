import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static final instance = ServiceLocator();
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  void initialize() {
    _getIt.registerLazySingleton<IWriterRepository>(
      () => WriterRepositoryImpl(
        localDataSource: MockWriterStorage(),
      ),
    );
  }
}
