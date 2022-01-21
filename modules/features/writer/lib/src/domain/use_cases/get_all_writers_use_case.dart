import 'package:get/get.dart';

import '../../data/repositories/writer_repository/i_writer_repository.dart';
import '../../domain/entities/writer.dart';

class GetAllWritersUseCase {
  final IWriterRepository _writerRepository = Get.find();

  Future<List<Writer>> call() async {
    return _writerRepository.getAllWriters();
  }
}
