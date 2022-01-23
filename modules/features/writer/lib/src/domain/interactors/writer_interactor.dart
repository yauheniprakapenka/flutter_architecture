import '../../domain/entities/writer.dart';
import '../../domain/use_cases/get_all_writers_use_case.dart';

class WriterInteractor {
  Future<List<Writer>> getAllWriters() async {
    return GetAllWritersUseCase().call();
  }
}
