import '../dto/writer_dto.dart';

abstract class IWriterStorage {
  Future<List<WriterDTO>> getAllWriters();
}
