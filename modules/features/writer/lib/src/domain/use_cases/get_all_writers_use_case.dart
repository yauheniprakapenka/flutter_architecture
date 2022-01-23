import 'package:get/get.dart';

import '../../domain/entities/writer.dart';
import '../../domain/repositories/writer_repository/i_writer_repository.dart';

class GetAllWritersUseCase {
  final IWriterRepository _writerRepository = Get.find();

  Future<List<Writer>> call() async {
    return _writerRepository.getAllWriters();
  }
}
