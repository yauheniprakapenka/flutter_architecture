import '../../../domain/entities/space.dart';
import '../../../domain/repositories/space_repository/i_space_repository.dart';
import '../../../data/repositories/space_repository/space_repository_impl.dart';

class GetAllSpacesUseCase {
  final ISpaceRepository _spaceRepository = SpaceRepositoryImpl();

  Future<List<Space>> call() async {
    return _spaceRepository.getAllSpaces();
  }
}
