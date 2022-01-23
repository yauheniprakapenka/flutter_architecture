import '../../../../data/dto/writer_dto.dart';
import '../../../../data/storage/i_writer_storage.dart';
import '../../../../data/storage/mock_local_storage/writers/writers.dart';

class MockWriterRepository implements IWriterStorage {
  @override
  Future<List<WriterDTO>> getAllWriters() async {
    await Future.delayed(const Duration(seconds: 1));
    return _allWriters;
  }
}

final _allWriters = <WriterDTO>[
  eseninSergej,
  akhmatovaAnna,
  bartoAgniya,
  lermontovMikhail,
];
