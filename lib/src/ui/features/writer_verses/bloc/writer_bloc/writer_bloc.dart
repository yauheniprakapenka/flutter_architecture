import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/services/service_locator.dart';
import 'writer_events/get_all_writers_event.dart';
import 'writer_events/i_writer_event.dart';
import 'writer_state.dart';

class WriterBloc extends Bloc<IWriterEvent, WriterState> {
  WriterBloc() : super(const WriterState());

  @override
  Stream<WriterState> mapEventToState(IWriterEvent event) async* {
    if (event is GetAllWritersEvent) {
      yield state.copyWith(isLoading: true);
      try {
        final getAllWritersUseCase = GetAllWritersUseCase(
          writerRepository: ServiceLocator.instance.get<IWriterRepository>(),
        );
        final writers = await getAllWritersUseCase();
        yield state.copyWith(writers: writers, isLoading: false);
      } on Exception catch (e) {
        debugPrint(e.toString());
        yield state.copyWith(writers: [], isLoading: false);
      }
      return;
    }
  }
}
