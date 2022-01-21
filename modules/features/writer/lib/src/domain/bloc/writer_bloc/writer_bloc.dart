import 'dart:async';

import '../../../domain/bloc/writer_bloc/writer_event.dart';
import '../../../domain/entities/writer.dart';
import '../../../domain/use_cases/writer_use_cases/get_all_writers_use_case.dart';

class WriterBloc {
  final _writers = <Writer>[];
  final _getAllWritersUseCase = GetAllWritersUseCase();

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
      _writers.addAll(await _getAllWritersUseCase());
    }
    _stateCntrl.add(_writers);
  }
}
