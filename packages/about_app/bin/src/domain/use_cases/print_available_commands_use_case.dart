// ignore_for_file: avoid_print, cascade_invocations

import '../../domain/entities/i_command.dart';

class PrintAvailableCommandsUseCase {
  void call(List<ICommand> commands) {
    print(_buildCommands(commands));
  }

  String _buildCommands(List<ICommand> commands) {
    final _commands = StringBuffer();
    _commands.write('\nAvailable commands:');
    for (final command in commands) {
      _commands.write('\n   ${command.name}   ${command.description}');
    }
    _commands.write('\n');
    return _commands.toString();
  }
}
