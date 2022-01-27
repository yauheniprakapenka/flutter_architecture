import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc.dart';
import '../../di/di.dart';
import '../../use_cases/get_all_writers_use_case.dart';

class WriterBloc extends Bloc<IWriteEvent, WriterState> {
  WriterBloc() : super(const WriterState()) {
    DI.initialize();
  }

  @override
  Stream<WriterState> mapEventToState(IWriteEvent event) async* {
    if (event is GetAllWritersEvent) {
      yield state.copyWith(isLoading: true);
      try {
        final writers = await GetAllWritersUseCase.call();
        yield state.copyWith(writers: writers, isLoading: false);
      } on Exception catch (e) {
        debugPrint(e.toString());
        yield state.copyWith(writers: [], isLoading: false);
      }
      return;
    }
  }
}
