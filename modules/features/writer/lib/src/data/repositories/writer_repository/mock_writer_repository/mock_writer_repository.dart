import '../../../../data/repositories/writer_repository/mock_writer_repository/writers/writers.dart';
import '../../../../domain/entities/writer.dart';
import '../../../../domain/repositories/writer_repository/i_writer_repository.dart';

class MockWriterRepository implements IWriterRepository {
  @override
  Future<List<Writer>> getAllWriters() async {
    return Future.delayed(const Duration(seconds: 1)).then((value) {
      return _allWriters;
    });
  }
}

const _allWriters = [
  eseninSergej,
  akhmatovaAnna,
  bartoAgniya,
  lermontovMikhail,
];
