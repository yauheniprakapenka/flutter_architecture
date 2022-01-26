import 'package:data/data.dart';

import '../entities/writer.dart';
import '../repositories/i_repositories.dart';

class GetAllWritersUseCase {
  final IWriterRepository _writerRepository = ServiceLocator.instance.get<IWriterRepository>();

  Future<List<Writer>> call() async {
    return _writerRepository.getAllWriters();
  }
}
