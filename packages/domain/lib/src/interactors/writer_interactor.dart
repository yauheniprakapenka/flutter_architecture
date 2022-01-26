import '../entities/writer.dart';
import '../use_cases/get_all_writers_use_case.dart';

class WriterInteractor {
  Future<List<Writer>> getAllWriters() async {
    return GetAllWritersUseCase().call();
  }
}
