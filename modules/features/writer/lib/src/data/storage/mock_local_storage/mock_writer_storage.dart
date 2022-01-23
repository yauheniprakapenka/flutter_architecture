import '../../dto/writer_dto.dart';
import '../i_writer_storage.dart';
import 'writers/writers.dart';

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
