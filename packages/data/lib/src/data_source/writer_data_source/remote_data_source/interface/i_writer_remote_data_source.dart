import '../../../../dto/writer_dto.dart';

abstract class IWriterRemoteDataSource {
  Future<List<WriterDTO>> getAllWriters();
}
