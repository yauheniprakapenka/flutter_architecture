import '../../domain/entities/i_command.dart';
import '../../data/commands/commands/save_command.dart';

class Commands {
  static List<ICommand> getAllCommands() {
    return [
      SaveCommand(),
    ];
  }
}
