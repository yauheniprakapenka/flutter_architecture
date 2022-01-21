import '../../domain/entities/writer.dart';

class WriterHeroTagFactory {
  static String makeNameTag(Writer writer) {
    return 'name ${writer.name}';
  }

  static String makeAvatarTag(Writer writer) {
    return 'avatar ${writer.name}';
  }
}
