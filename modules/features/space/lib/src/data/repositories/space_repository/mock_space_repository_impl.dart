import '../../../domain/entities/space.dart';
import '../../../domain/repositories/space_repository/i_space_repository.dart';

class MockSpaceRepositoryImpl implements ISpaceRepository {
  @override
  Future<List<Space>> getAllSpaces() async {
    return Future.delayed(const Duration(seconds: 1)).then((value) {
      return _spaces;
    });
  }
}

final _spaces = List<Space>.generate(6, (index) {
  return Space(
    id: '$index',
    image: 'modules/features/space/assets/spaces/space_${index + 1}.jpg',
    description: 'Галактика, в которой находятся Земля, Солнечная система и все отдельные звёзды, видимые невооружённым глазом',
  );
});
