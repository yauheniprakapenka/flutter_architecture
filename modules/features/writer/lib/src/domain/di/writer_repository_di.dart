import 'package:get/get.dart';

import '../../data/repositories/writer_repository/i_writer_repository.dart';
import '../../data/repositories/writer_repository/mock_writer_repository/mock_writer_repository.dart';
import '../../data/repositories/writer_repository/writer_repository.dart';

class WriterRepositoryDI {
  static void addDependencies() {
    Get.put<IWriterRepository>(
      WriterRepository(
        localDataSource: MockWriterRepository(),
      ),
    );
  }
}
