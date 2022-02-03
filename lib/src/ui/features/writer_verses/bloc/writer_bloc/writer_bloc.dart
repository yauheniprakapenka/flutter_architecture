import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'writer_events/writer_events.dart';
import 'writer_state.dart';

class WriterBloc extends Bloc<IWriterEvent, WriterState> {
  final _writerRepository = DataServiceLocator.instance.get<IWriterRepository>();

  WriterBloc() : super(const WriterState());

  @override
  Stream<WriterState> mapEventToState(IWriterEvent event) async* {
    if (event is GetAllBookmarkedWritersIdEvent) {
      final bookmarkedWritersId = await _getAllBookmarkedWritersIdUseCase();
      yield state.copyWith(bookmarkedWritersId: bookmarkedWritersId, isLoading: false);
      return;
    }

    if (event is GetAllWritersEvent) {
      yield state.copyWith(isLoading: true);
      try {
        final getAllWritersUseCase = GetAllWritersUseCase(writerRepository: _writerRepository);
        final writers = await getAllWritersUseCase();
        final bookmarkedWritersId = await _getAllBookmarkedWritersIdUseCase();
        yield state.copyWith(writers: writers, bookmarkedWritersId: bookmarkedWritersId, isLoading: false);
      } on Exception catch (e) {
        debugPrint(e.toString());
        yield state.copyWith(writers: [], isLoading: false);
      }
      return;
    }

    if (event is BookmarkWriterEvent) {
      final bookmarkWriterUseCase = BookmarkWriterIdUseCase(
        writerRepository: _writerRepository,
      );
      await bookmarkWriterUseCase(event.id);
      final bookmarkedWritersId = await _getAllBookmarkedWritersIdUseCase();
      yield state.copyWith(bookmarkedWritersId: bookmarkedWritersId);
      return;
    }

    if (event is UnbookmarkWriterEvent) {
      final unbookmarkWriterUseCase = UnbookmarkWriterIdUseCase(
        writerRepository: _writerRepository,
      );
      await unbookmarkWriterUseCase(event.id);
      final bookmarkedWritersId = await _getAllBookmarkedWritersIdUseCase();
      yield state.copyWith(bookmarkedWritersId: bookmarkedWritersId);
      return;
    }
  }

  Future<Set<int>> _getAllBookmarkedWritersIdUseCase() async {
    final getAllBookmarkedWritersIdUseCase = GetAllBookmarkedWritersIdUseCase(writerRepository: _writerRepository);
    return getAllBookmarkedWritersIdUseCase();
  }
}
