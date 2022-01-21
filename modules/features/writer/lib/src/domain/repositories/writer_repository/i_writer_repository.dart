import 'package:writer/src/domain/entities/writer.dart';

abstract class IWriterRepository {
  Future<List<Writer>> getAllWriters();
}
