import 'package:writer/src/domain/di/writer_repository_di.dart';

import '../../domain/entities/writer.dart';
import '../../domain/use_cases/get_all_writers_use_case.dart';

class WriterInteractor {
  WriterInteractor() {
    WriterRepositoryDI.addDependencies();
  }

  Future<List<Writer>> getAllWriters() async {
    return GetAllWritersUseCase().call();
  }
}
