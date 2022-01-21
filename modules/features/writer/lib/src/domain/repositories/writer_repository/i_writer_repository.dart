import '../../../domain/entities/writer.dart';

abstract class IWriterRepository {
  Future<List<Writer>> getAllWriters();
}
