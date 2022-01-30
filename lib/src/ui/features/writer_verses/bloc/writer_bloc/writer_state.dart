import 'package:domain/domain.dart';

class WriterState {
  final List<Writer> writers;
  final bool isLoading;

  const WriterState({
    this.writers = const [],
    this.isLoading = true,
  });

  WriterState copyWith({List<Writer>? writers, bool? isLoading}) {
    return WriterState(
      writers: writers ?? this.writers,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
