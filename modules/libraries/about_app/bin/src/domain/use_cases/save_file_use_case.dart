import 'dart:io';

import '../../domain/entities/i_ascii_image.dart';

class SaveFileUseCase {
  static Future<void> call(IAsciiImage asciiImage) async {
    const fileName = 'about_app.txt';
    await File(fileName).writeAsString(asciiImage.image).whenComplete(() {
      print('[INFO] File created successfully.');
    });
  }
}
