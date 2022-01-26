import '../../../domain/entities/i_command.dart';

class SaveCommand implements ICommand {
  @override
  String get name => 'create';

  @override
  String get description => 'Display available ascii images.';
}
