import '../../../data/dto/writer_dto.dart';
import '../../../data/storage/i_writer_storage.dart';
import '../../../data/storage/mock_writer_storage/writers/writers.dart';

class MockWriterStorage implements IWriterStorage {
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
