import 'package:get/get.dart';

import '../../data/storage/mock_local_storage/mock_writer_storage.dart';
import '../../data/repositories/writer_repository/writer_repository_impl.dart';
import '../../domain/repositories/writer_repository/i_writer_repository.dart';

class WriterDI {
  static void addDependencies() {
    Get.put<IWriterRepository>(
      WriterRepositoryImpl(
        localStorage: MockWriterStorage(),
      ),
    );
  }
}
