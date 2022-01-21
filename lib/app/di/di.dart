import 'package:get/get.dart';
import 'package:writer/writer.dart';

class DI {
  static void addDependencies() {
    Get.put<IWriterRepository>(
      WriterRepository(
        localDataSource: MockWriterRepository(),
      ),
    );
  }
}
