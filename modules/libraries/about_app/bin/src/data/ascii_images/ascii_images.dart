import '../../data/ascii_images/ascii_images/table_ascii_image.dart';
import 'ascii_images/cat_ascii_image.dart';
import '../../domain/entities/i_ascii_image.dart';

class AsciiImages {
  static List<IAsciiImage> getAllAsciiImages() {
    return [
      CatImage(),
      TableImage(),
    ];
  }
}
