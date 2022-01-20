import '../../../domain/bloc/space_bloc/space_event.dart';
import '../../../domain/entities/space.dart';

abstract class ISpaceBloc {
  Stream<List<Space>> get state;
  Sink<SpaceEvent> get event;
  void dispose();
}
