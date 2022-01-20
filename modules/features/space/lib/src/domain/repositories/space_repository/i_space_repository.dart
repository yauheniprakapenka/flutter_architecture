import '../../entities/space.dart';

abstract class ISpaceRepository {
  Future<List<Space>> getAllSpaces();
}
