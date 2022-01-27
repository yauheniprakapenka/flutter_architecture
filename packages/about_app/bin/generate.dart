import 'src/data/commands/commands.dart';
import 'src/data/commands/commands/save_command.dart';
import 'src/domain/handlers/save_command_handler.dart';
import 'src/domain/use_cases/print_available_commands_use_case.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    PrintAvailableCommandsUseCase().call(Commands.getAllCommands());
  } else if (args.first == SaveCommand().name) {
    await SaveCommandHandler().handle(args);
  } else {
    PrintAvailableCommandsUseCase().call(Commands.getAllCommands());
  }
}
