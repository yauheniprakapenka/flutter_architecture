import '../interface/i_writer_event.dart';

class UnbookmarkWriterEvent implements IWriterEvent {
  final int id;

  const UnbookmarkWriterEvent(this.id);
}
