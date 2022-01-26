import '../../data/commands/commands/save_command.dart';
import '../../domain/entities/i_command.dart';

class Commands {
  static List<ICommand> getAllCommands() {
    return [
      SaveCommand(),
    ];
  }
}
