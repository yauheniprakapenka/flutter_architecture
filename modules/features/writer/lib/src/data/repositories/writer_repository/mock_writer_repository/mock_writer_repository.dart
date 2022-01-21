import '../../../../data/dto/writer_dto.dart';
import '../../../../data/repositories/writer_repository/i_writer_repository.dart';
import '../../../../data/repositories/writer_repository/mock_writer_repository/writers/writers.dart';

class MockWriterRepository implements IWriterRepository {
  @override
  Future<List<WriterDTO>> getAllWriters() async {
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
