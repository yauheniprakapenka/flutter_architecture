import 'package:get/get.dart';

import '../../../domain/entities/space.dart';
import '../../../domain/repositories/space_repository/i_space_repository.dart';

class GetAllSpacesUseCase {
  final ISpaceRepository _spaceRepository = Get.find();

  Future<List<Space>> call() async {
    return _spaceRepository.getAllSpaces();
  }
}
