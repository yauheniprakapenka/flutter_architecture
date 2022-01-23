import '../../domain/entities/i_ascii_image.dart';

class PrintAvailableImagesUseCase {
  void call(List<IAsciiImage> asciiImages) {
    print(_buildAvailableAsciiImages(asciiImages));
  }

  String _buildAvailableAsciiImages(List<IAsciiImage> asciiImages) {
    final _asciiImages = StringBuffer();
    _asciiImages.write('\nAvailable images:');
    for (final asciiImage in asciiImages) {
      _asciiImages.write('\n    ${asciiImage.name}');
    }
    _asciiImages.write('\n');
    return _asciiImages.toString();
  }
}
