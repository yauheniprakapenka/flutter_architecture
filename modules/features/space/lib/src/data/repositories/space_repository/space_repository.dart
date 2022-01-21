import 'package:space/space.dart';

import '../../../domain/entities/space.dart';
import '../../../domain/repositories/space_repository/i_space_repository.dart';

class SpaceRepository implements ISpaceRepository {
  final ISpaceRepository localDataSource;

  SpaceRepository({
    required this.localDataSource,
  });

  @override
  Future<List<Space>> getAllSpaces() async {
    return localDataSource.getAllSpaces();
  }
}
