import '../../../data/dto/writer_dto.dart';

abstract class IWriterRepository {
  Future<List<WriterDTO>> getAllWriters();
}
