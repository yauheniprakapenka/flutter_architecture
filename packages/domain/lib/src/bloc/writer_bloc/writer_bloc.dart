import 'package:data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc.dart';
import '../../di/di.dart';
import '../../repositories/i_repositories.dart';

class WriterBloc extends Bloc<IWriteEvent, WriterState> {
  late final IWriterRepository writerRepository;

  WriterBloc() : super(const WriterState()) {
    DI.initialize();
    writerRepository = ServiceLocator.instance.get<IWriterRepository>();
  }

  @override
  Stream<WriterState> mapEventToState(IWriteEvent event) async* {
    if (event is GetAllWritersEvent) {
      yield state.copyWith(isLoading: true);
      try {
        final writers = await writerRepository.getAllWriters();
        yield state.copyWith(writers: writers, isLoading: false);
      } on Exception catch (e) {
        debugPrint(e.toString());
        yield state.copyWith(writers: [], isLoading: false);
      }
      return;
    }
  }
}
