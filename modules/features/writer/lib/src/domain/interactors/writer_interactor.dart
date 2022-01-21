import 'package:get/get.dart';

import '../../data/repositories/writer_repository/i_writer_repository.dart';
import '../../data/repositories/writer_repository/mock_writer_repository/mock_writer_repository.dart';
import '../../data/repositories/writer_repository/writer_repository.dart';
import '../../domain/entities/writer.dart';
import '../../domain/use_cases/get_all_writers_use_case.dart';

class WriterInteractor {
  WriterInteractor() {
    Get.put<IWriterRepository>(
      WriterRepository(
        localDataSource: MockWriterRepository(),
      ),
    );
  }

  Future<List<Writer>> getAllWriters() async {
    return GetAllWritersUseCase().call();
  }
}
