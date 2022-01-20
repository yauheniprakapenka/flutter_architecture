import '../../../data/repositories/space_repository/mock_space_repository_impl.dart';
import '../../../domain/entities/space.dart';
import '../../../domain/repositories/space_repository/i_space_repository.dart';

class SpaceRepositoryImpl implements ISpaceRepository {
  final ISpaceRepository _spaceRepository = MockSpaceRepositoryImpl();

  @override
  Future<List<Space>> getAllSpaces() async {
    return _spaceRepository.getAllSpaces();
  }
}
