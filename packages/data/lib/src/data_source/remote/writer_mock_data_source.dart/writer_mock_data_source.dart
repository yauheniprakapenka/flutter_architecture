import '../../../dto/writer_dto.dart';
import 'writers/writers.dart';
import '../interface/i_writer_remote_data_source.dart';

class WriterMockDataSource implements IWriterRemoteDataSource {
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
