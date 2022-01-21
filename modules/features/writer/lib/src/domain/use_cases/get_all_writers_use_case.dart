import 'package:get/get.dart';

import '../../data/repositories/writer_repository/i_writer_repository.dart';
import '../../domain/entities/writer.dart';
import '../../domain/mappers/writer_mapper.dart';

class GetAllWritersUseCase {
  final IWriterRepository _writerRepository = Get.find();

  Future<List<Writer>> call() async {
    final allWritersDTO = await _writerRepository.getAllWriters();
    return allWritersDTO.map(WriterMapper.dtoToEntity).toList();
  }
}
