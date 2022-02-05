import '../interface/i_writer_event.dart';

class BookmarkWriterEvent implements IWriterEvent {
  final int id;

  const BookmarkWriterEvent(this.id);
}
