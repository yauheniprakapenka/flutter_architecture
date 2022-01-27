import 'package:data/data.dart';

import '../entities/writer.dart';
import '../repositories/i_repositories.dart';

class GetAllWritersUseCase {
  static Future<List<Writer>> call() async {
    final _writerRepository = ServiceLocator.instance.get<IWriterRepository>();
    return _writerRepository.getAllWriters();
  }
}
