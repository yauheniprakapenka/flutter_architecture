import '../../../../dto/writer_dto.dart';
import '../interface/i_writer_remote_data_source.dart';
import 'writers/writers.dart';

class WriterMockRemoteDataSource implements IWriterRemoteDataSource {
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
