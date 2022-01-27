// ignore_for_file: avoid_print

import 'dart:io';

import '../../data/ascii_images/ascii_images.dart';
import '../../data/commands/commands.dart';
import '../../domain/use_cases/print_available_commands_use_case.dart';
import '../../domain/use_cases/print_available_images_use_case.dart';
import '../../domain/use_cases/save_file_use_case.dart';

class SaveCommandHandler {
  Future<void> handle(List<String> args) async {
    final argsLength = args.length;
    if (argsLength == 1) {
      PrintAvailableImagesUseCase().call(AsciiImages.getAllAsciiImages());
      exit(0);
    }

    if (argsLength == 2) {
      final selectedImageName = args[1];
      final index = AsciiImages.getAllAsciiImages().indexWhere((element) {
        return element.name == selectedImageName;
      });
      const notFoundIndex = -1;
      if (index == notFoundIndex) {
        print('[INFO] $selectedImageName not found.');
      } else {
        await SaveFileUseCase.call(AsciiImages.getAllAsciiImages()[index]);
      }
      exit(0);
    }

    PrintAvailableCommandsUseCase().call(Commands.getAllCommands());
  }
}
