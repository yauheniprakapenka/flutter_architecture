import 'package:get/get.dart';
import 'package:space/space.dart';

class DI {
  static void addDependencies() {
    Get.put<ISpaceRepository>(
      SpaceRepository(
        localDataSource: MockSpaceRepository(),
      ),
    );

    Get.put(SpaceBloc());
  }
}
