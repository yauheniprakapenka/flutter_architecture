import '../../../src/domain/entities/space.dart';

class SpaceHeroTagFactory {
  static String makeDescriptionTag(Space space) {
    return '${space.description}';
  }

  static String makeImageTag(Space space) {
    return '${space.image}';
  }
}
