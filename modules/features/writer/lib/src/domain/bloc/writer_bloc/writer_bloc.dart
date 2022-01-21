import 'dart:async';


import '../../../domain/bloc/writer_bloc/writer_event.dart';
import '../../../domain/entities/writer.dart';
import '../../../domain/interactors/writer_interactor.dart';

class WriterBloc {
  final _writers = <Writer>[];
  final _writerInteractor = WriterInteractor();

  final _stateCntrl = StreamController<List<Writer>>();
  final _eventCntrl = StreamController<WriterEvent>();

  Stream<List<Writer>> get state => _stateCntrl.stream;
  Sink<WriterEvent> get event => _eventCntrl.sink;

  WriterBloc() {
    _eventCntrl.stream.listen(_handleEvent);
    _handleEvent(WriterEvent.update);
  }

  void dispose() {
    _stateCntrl.close();
    _eventCntrl.close();
  }

  Future<void> _handleEvent(WriterEvent event) async {
    if (event == WriterEvent.update) {
      _writers.clear();
      _stateCntrl.add(_writers);
      _writers.addAll(await _writerInteractor.getAllWriters());
    }
    _stateCntrl.add(_writers);
  }
}
