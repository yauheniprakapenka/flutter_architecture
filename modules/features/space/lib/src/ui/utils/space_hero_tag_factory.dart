import '../../../src/domain/entities/space.dart';

class SpaceHeroTagFactory {
  static String makeDescriptionTag(Space space) {
    return 'description ${space.id}';
  }

  static String makeImageTag(Space space) {
    return 'image ${space.id}';
  }
}
