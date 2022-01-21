import '../../domain/entities/writer.dart';

class WriterHeroTagFactory {
  static String makeWriterAvatarTag(Writer writer) {
    return writer.avatar;
  }
}
