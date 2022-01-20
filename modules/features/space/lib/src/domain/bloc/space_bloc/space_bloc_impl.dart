import 'dart:async';

import '../../../domain/use_cases/space_use_cases/get_all_spaces_use_case.dart';
import '../../../domain/bloc/space_bloc/space_bloc.dart';
import '../../../domain/entities/space.dart';

class SpaceBlocImpl implements ISpaceBloc {
  final _spaces = <Space>[];
  final _getAllSpacesUseCase = GetAllSpacesUseCase();

  final _stateCntrl = StreamController<List<Space>>();
  final _eventCntrl = StreamController<SpaceEvent>();

  @override
  Stream<List<Space>> get state => _stateCntrl.stream;

  @override
  Sink<SpaceEvent> get event => _eventCntrl.sink;

  SpaceBlocImpl() {
    _eventCntrl.stream.listen(_handleEvent);
    _handleEvent(SpaceEvent.update);
  }

  @override
  void dispose() {
    _stateCntrl.close();
    _eventCntrl.close();
  }

  Future<void> _handleEvent(SpaceEvent event) async {
    if (event == SpaceEvent.update) {
      _spaces.clear();
      _stateCntrl.add(_spaces);
      _spaces.addAll(await _getAllSpacesUseCase());
    }
    _stateCntrl.add(_spaces);
  }
}
